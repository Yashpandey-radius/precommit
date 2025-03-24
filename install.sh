#/bin/bash

echo "
#########################################################
## File Name     : install.sh
## Purpose       : 
## Creation Date : 22-03-2025
## Last Modified : Saturday 22 March 2025 03:45:47 PM
## Created By    : 𝘼𝙢𝙞𝙩 𝘿𝙬𝙞𝙫𝙚𝙙𝙞
## Email         : 𝖺𝗆𝗂𝗍.𝖽𝗐𝗂𝗏𝖾𝖽𝗂@𝗋𝖺𝖽𝗂𝗎𝗌.𝖼𝗈.𝗂𝗇
#########################################################"

#!/bin/bash

# Function to handle errors and exit
handle_error() {
    echo "[ERROR] $1"
    exit 1
}

# Function to download a PHAR file only if it doesn't already exist
download_tool() {
    local tool_name=$1
    local tool_url=$2
    local destination=$3
    local exe_url=$4  # URL for .exe file (if applicable)
    local max_retries=5  # Increased retry count for better chances
    local attempt=1
    local wait_time=2  # Initial wait time for exponential backoff

    # Check if the tool already exists and is executable
    if [ -f "$destination" ] && [ -x "$destination" ]; then
        echo "[INFO] $tool_name is already downloaded and executable."
        return
    fi

    echo "[INFO] Downloading $tool_name... (attempting .phar download)"
    while [ $attempt -le $max_retries ]; do
        curl -L $tool_url -o $destination
        if [ $? -eq 0 ]; then
            # Check the file size after downloading (simple check, could be improved)
            if [ ! -s "$destination" ]; then
                echo "[WARNING] Downloaded file for $tool_name is empty or corrupted. Retrying... (Attempt $attempt/$max_retries)"
                ((attempt++))
                sleep $wait_time  # Exponential backoff: wait time increases with each attempt
                continue
            fi

            # Make the downloaded file executable
            chmod +x $destination
            echo "[INFO] $tool_name downloaded and made executable."
            return
        fi
        echo "[WARNING] Failed to download $tool_name. Retry attempt $attempt/$max_retries... (Wait $wait_time seconds)"
        ((attempt++))
        sleep $wait_time  # Exponential backoff
        wait_time=$((wait_time * 2))  # Double the wait time for the next attempt
    done

    # If the download of the .phar fails, try using the .exe version (for Windows)
    if [[ "$PLATFORM" == "MINGW64_NT"* && -n "$exe_url" ]]; then
        echo "[INFO] Attempting to download the .exe version of $tool_name..."
        attempt=1
        wait_time=2  # Reset wait time for .exe download
        while [ $attempt -le $max_retries ]; do
            curl -L $exe_url -o "$tool_name.exe"
            if [ $? -eq 0 ]; then
                echo "[INFO] $tool_name .exe version downloaded."
                return
            fi
            echo "[WARNING] Failed to download $tool_name .exe version. Retry attempt $attempt/$max_retries... (Wait $wait_time seconds)"
            ((attempt++))
            sleep $wait_time  # Exponential backoff
            wait_time=$((wait_time * 2))  # Double the wait time for the next attempt
        done
    fi

    handle_error "[ERROR] Failed to download $tool_name after $max_retries attempts."
}

# Detect platform and set path
PLATFORM=$(uname -s)

if [[ "$PLATFORM" == "Linux" || "$PLATFORM" == "Darwin" ]]; then
    echo "[INFO] Detected platform: $PLATFORM (Linux or macOS)"
elif [[ "$PLATFORM" == "MINGW64_NT"* ]]; then
    echo "[INFO] Detected platform: Windows (MSYS/MinGW)"
else
    handle_error "[ERROR] Unsupported platform: $PLATFORM"
fi

# Ensure curl is installed
if ! command -v curl &> /dev/null; then
    handle_error "[ERROR] curl could not be found. Please install curl."
fi

# Install PHP if not installed
echo "[INFO] Checking PHP installation..."
if ! command -v php &> /dev/null; then
    echo "[INFO] PHP is not installed. Installing PHP..."
    if [[ "$PLATFORM" == "Linux" ]]; then
        # For Ubuntu or Amazon Linux
        if [ -f /etc/os-release ] && grep -q "Ubuntu" /etc/os-release; then
            # For Ubuntu
            sudo apt-get update
            sudo apt-get install -y php php-cli php-curl php-mbstring php-xml php-zip
            sleep 5  # Wait for the installation to complete
        elif [ -f /etc/os-release ] && grep -q "Amazon Linux" /etc/os-release; then
            # For Amazon Linux
            sudo amazon-linux-extras enable php8.0
            sudo yum clean metadata
            sudo yum install -y php php-cli php-curl php-mbstring php-xml php-zip
            sleep 5  # Wait for the installation to complete
        fi
    elif [[ "$PLATFORM" == "Darwin" ]]; then
        # For macOS (using Homebrew)
        if ! command -v brew &> /dev/null; then
            handle_error "[ERROR] Homebrew is not installed. Please install Homebrew first."
        fi
        brew install php
        sleep 5  # Wait for the installation to complete
    elif [[ "$PLATFORM" == "MINGW64_NT"* ]]; then
        # For Windows (using MSYS/MinGW)
        echo "[INFO] Please install PHP manually from https://windows.php.net/download/"
        handle_error "[ERROR] PHP installation on Windows is not automated. Please install PHP manually."
    fi
else
    PHP_VERSION=$(php -v | head -n 1 | awk '{print $2}')
    PHP_MAJOR_VERSION=$(echo "$PHP_VERSION" | cut -d'.' -f1)
    PHP_MINOR_VERSION=$(echo "$PHP_VERSION" | cut -d'.' -f2)
    PHP_PATCH_VERSION=$(echo "$PHP_VERSION" | cut -d'.' -f3)
    echo "[INFO] PHP is already installed. Version: $PHP_VERSION"
fi

# Check PHP version compatibility with PHP-CS-Fixer (supports PHP >= 7)
if [ "$PHP_MAJOR_VERSION" -ge 7 ]; then
    echo "[INFO] PHP version >= 7 detected. PHP-CS-Fixer will be installed."
    export PHP_CS_FIXER_IGNORE_ENV=1
else
    handle_error "[ERROR] PHP version lower than 7 detected. Please update PHP to at least version 7."
fi

# Check if PHP curl extension is installed
if ! php -m | grep -q 'curl'; then
    echo "[ERROR] Required PHP extension 'curl' is not installed."
    echo "[INFO] Please install the 'curl' PHP extension. If you're using Windows, follow the steps:"
    echo "[INFO] 1. Open your php.ini file (typically located in your PHP installation folder)."
    echo "[INFO] 2. Uncomment the line that says 'extension=curl' (remove the semicolon at the beginning)."
    echo "[INFO] 3. Restart your web server or PHP process."
    handle_error "[ERROR] PHP curl extension is required."
fi

# Create a directory for PHP tools
echo "[INFO] Creating php_tools directory..."
mkdir -p ./php_tools
cd ./php_tools

# Download tools if not already installed
download_tool "PHPStan" "https://github.com/phpstan/phpstan/releases/download/1.0.0/phpstan.phar" "phpstan.phar" "https://github.com/phpstan/phpstan/releases/download/1.0.0/phpstan.exe"
sleep 2  # Wait for the download completion
download_tool "PHP_CodeSniffer" "https://github.com/squizlabs/PHP_CodeSniffer/releases/download/3.7.2/phpcs.phar" "phpcs.phar" "https://github.com/squizlabs/PHP_CodeSniffer/releases/download/3.7.2/phpcs.exe"
sleep 2  # Wait for the download completion
download_tool "Psalm" "https://github.com/vimeo/psalm/releases/download/v4.15.0/psalm.phar" "psalm.phar" "https://github.com/vimeo/psalm/releases/download/v4.15.0/psalm.exe"
sleep 2  # Wait for the download completion
download_tool "PHPUnit" "https://phar.phpunit.de/phpunit.phar" "phpunit.phar" "https://phar.phpunit.de/phpunit.exe"
sleep 2  # Wait for the download completion

# Download alternative tools if not already installed
download_tool "Behat" "https://github.com/Behat/Behat/releases/download/v3.10.0/behat.phar" "behat.phar" "https://github.com/Behat/Behat/releases/download/v3.10.0/behat.exe"
sleep 2  # Wait for the download completion
download_tool "PHP Code Beautifier and Fixer (phpcbf)" "https://github.com/squizlabs/PHP_CodeSniffer/releases/download/3.7.2/phpcbf.phar" "phpcbf.phar" "https://github.com/squizlabs/PHP_CodeSniffer/releases/download/3.7.2/phpcbf.exe"
sleep 2  # Wait for the download completion
download_tool "RIPS Code Analysis" "https://github.com/ripstech/rips/releases/download/v1.0.0/rips.phar" "rips.phar" "https://github.com/ripstech/rips/releases/download/v1.0.0/rips.exe"
sleep 2  # Wait for the download completion

# Handling PHP-CS-Fixer for PHP >= 8.1 compatibility
if [ "$PHP_MAJOR_VERSION" -ge 8 ]; then
    echo "[INFO] PHP version >= 8 detected. Bypassing PHP-CS-Fixer version check."
    export PHP_CS_FIXER_IGNORE_ENV=1
fi

download_tool "PHP-CS-Fixer" "https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v3.0.0/php-cs-fixer.phar" "php-cs-fixer.phar" "https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/v3.0.0/php-cs-fixer.exe"
sleep 2  # Wait for the download completion
download_tool "Local PHP Security Checker" "https://github.com/robrichards/php-tools/releases/download/v1.0.0/local-php-security-checker.phar" "local-php-security-checker.phar" "https://github.com/robrichards/php-tools/releases/download/v1.0.0/local-php-security-checker.exe"
sleep 2  # Wait for the download completion

# Ensure pip3 is installed (for Linux and macOS)
if ! command -v pip3 &> /dev/null; then
    echo "[INFO] pip3 is not installed. Installing pip3..."
    # For Amazon Linux or any other platform
    if [[ "$PLATFORM" == "Linux" ]]; then
        # For Amazon Linux
        sudo yum install -y python3
        sudo python3 -m ensurepip --upgrade
        sudo python3 -m pip install --upgrade pip
    elif [[ "$PLATFORM" == "Darwin" ]]; then
        # For macOS (using Homebrew)
        brew install python3
    fi
fi

# Install pre-commit using pip3 with different methods
echo "[INFO] Checking if pre-commit is installed..."

# Check if we're inside a virtual environment
if [ -z "$VIRTUAL_ENV" ]; then
    echo "[INFO] No virtual environment detected. Checking for pipx installation..."
    
    # Check if pipx is installed and use it
    if ! command -v pipx &> /dev/null; then
        echo "[INFO] pipx not found. Installing pre-commit system-wide..."
        
        # Try installing pre-commit with pip3 system-wide using --break-system-packages
        echo "[INFO] Installing pre-commit using pip3 with --break-system-packages..."
        sudo pip3 install --break-system-packages pre-commit
    else
        echo "[INFO] Installing pre-commit using pipx..."
        pipx install pre-commit
    fi
else
    echo "[INFO] Virtual environment detected. Installing pre-commit inside the virtual environment..."
    pip install pre-commit
fi

# Run "pre-commit install" to generate hooks
echo "[INFO] Running 'pre-commit install' to set up git hooks..."
pre-commit install
sleep 2  # Wait for pre-commit installation to complete

# Final message
echo "[INFO] Installation completed successfully!"
