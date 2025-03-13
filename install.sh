#!/bin/sh

# Detect OS
OS="$(uname)"

install_on_linux() {
    if [ -f /etc/debian_version ]; then
        echo "Detected Ubuntu/Debian."
        sudo apt update && sudo apt install -y python3-pip python3-venv pipx
    elif [ -f /etc/redhat-release ]; then
        echo "Detected CentOS/RHEL/Fedora."
        sudo yum install -y python3-pip
    elif [ -f /etc/system-release ] && grep -qi "amazon linux" /etc/system-release; then
        echo "Detected Amazon Linux."
        sudo yum install -y python3-pip
    else
        echo "Unsupported Linux distribution. Please install Python 3 and pip manually."
        exit 1
    fi
}

install_on_macos() {
    echo "Detected macOS."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install python3 pipx
}

install_on_windows() {
    echo "Detected Windows."
    if command -v pip > /dev/null 2>&1; then
        echo "pip is already installed."
    else
        echo "Installing Python 3 and pip..."
        powershell.exe -Command "winget install Python.Python.3"
    fi
}

# Main logic
case "$OS" in
    "Linux") install_on_linux ;;
    "Darwin") install_on_macos ;;
    "MINGW"*|"MSYS"*) install_on_windows ;;
    *) echo "Unsupported OS. Please install 'pre-commit' manually." && exit 1 ;;
esac

# Install pre-commit using pipx (recommended)
pipx install pre-commit

# Ensure pipx path is added to PATH
export PATH=$PATH:~/.local/bin

# Initialize pre-commit in the project
pre-commit install

echo "✅ Pre-commit installation complete!"

