Hello User
Follow these two steps:- 

1- Add install.sh in the project root

2- Add .pre-commit-config.yaml in the project root




cat .pre-commit-config.yaml 
repos:
  - repo: local
    hooks:
      # PHPStan (Static Analysis)
      - id: phpstan
        name: PHPStan (Static Analysis)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpstan.phar analyse --level=5 --memory-limit=4G --error-format=raw .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpstan.phar analyse --level=5 --memory-limit=4G --error-format=raw .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpstan.phar analyse --level=5 --memory-limit=4G --error-format=raw .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        files: \.php$
        args: ["--memory-limit=4G"]

      - id: phpstan-alt
        name: PHPStan Alternative (PHPStan's alternative - **Psalm**)
        entry: |
          sh -c '
            # Check if psalm.xml exists
            if [ ! -f "./psalm.xml" ]; then
              echo "Error: psalm.xml not found. Exiting..."
              exit 1
            fi
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--error-level=medium"]

      # PHPUnit (Unit Testing)
      - id: phpunit
        name: Run PHPUnit
        entry: |
          sh -c '
            retries=3
            count=0
            until php ./php_tools/phpunit.phar --filter TestClassName || [ $count -ge $retries ]; do
              echo "PHPUnit failed. Retrying... ($((count+1))/$retries)"
              count=$((count+1))
              sleep 2
            done
          '
        language: system
        types: [file]
        args: ["--filter", "TestClassName"]

      - id: phpunit-alt
        name: Run PHPUnit Alternative (**Behat** for Behavioral Testing)
        entry: |
          sh -c '
            retries=3
            count=0
            until php ./php_tools/behat.phar || [ $count -ge $retries ]; do
              echo "Behat failed. Retrying... ($((count+1))/$retries)"
              count=$((count+1))
              sleep 2
            done
          '
        language: system
        types: [file]
        args: ["--tags", "not @wip", "."]

      # PHP_CodeSniffer (Coding Standards)
      - id: phpcs
        name: PHP CodeSniffer (PSR-12 Standard)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/*
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/*
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/*
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--ignore=vendor/*"]

      - id: phpcs-alt
        name: PHP CodeSniffer Alternative (PHP_CodeSniffer with custom standard)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/*
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/*
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/*
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--ignore=vendor/*"]

      # PHP-CS-Fixer
      - id: php-cs-fixer
        name: PHP-CS-Fixer
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/*
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/*
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/*
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--ignore=vendor/*"]

      - id: php-cs-fixer-alt
        name: PHP-CS-Fixer Alternative (**PHPCBF** - Code Beautifier and Fixer)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/*
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/*
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/*
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--ignore=vendor/*"]

      # Psalm (Static Analysis)
      - id: psalm
        name: Psalm (Static Analysis)
        entry: |
          sh -c '
            # Check if psalm.xml exists
            if [ ! -f "./psalm.xml" ]; then
              echo "Error: psalm.xml not found. Exiting..."
              exit 1
            fi
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--error-level=medium"]

      - id: psalm-alt
        name: Psalm Alternative (Static Analysis - **PHPStan**)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpstan.phar analyse --level=5 --memory-limit=2G
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpstan.phar analyse --level=5 --memory-limit=2G
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpstan.phar analyse --level=5 --memory-limit=2G
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--memory-limit=2G"]

      # Local PHP Security Checker
      - id: local-php-security-checker
        name: Local PHP Security Checker
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/local-php-security-checker.phar
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/local-php-security-checker.phar
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/local-php-security-checker.phar
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]

      # Local PHP Security Checker Alternative
      - id: local-php-security-checker-alt
        name: Local PHP Security Checker Alternative (**RIPS Code Analysis**)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/rips.phar
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/rips.phar
            elif command -v php >/dev/null 2>&1; then
                php ./php_tools/rips.phar
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]

default_stages:
  - pre-commit





git commit -m "t"
PHPStan (Static Analysis)............................................(no files to check)Skipped
PHPStan Alternative (PHPStan's alternative - **Psalm**)..................................Failed
- hook id: phpstan-alt
- exit code: 1

Error: psalm.xml not found. Exiting...

Run PHPUnit..............................................................................Passed
Run PHPUnit Alternative (**Behat** for Behavioral Testing)...............................Passed
PHP CodeSniffer (PSR-12 Standard)........................................................Failed
- hook id: phpcs
- exit code: 3

ERROR: You must supply at least one file or directory to process.

Run "phpcs --help" for usage information

PHP CodeSniffer Alternative (PHP_CodeSniffer with custom standard).......................Failed
- hook id: phpcs-alt
- exit code: 3

ERROR: You must supply at least one file or directory to process.

Run "phpcs --help" for usage information

PHP-CS-Fixer.............................................................................Failed
- hook id: php-cs-fixer
- exit code: 3

ERROR: You must supply at least one file or directory to process.

Run "phpcbf --help" for usage information

PHP-CS-Fixer Alternative (**PHPCBF** - Code Beautifier and Fixer)........................Failed
- hook id: php-cs-fixer-alt
- exit code: 3

ERROR: You must supply at least one file or directory to process.

Run "phpcbf --help" for usage information

Psalm (Static Analysis)..................................................................Failed
- hook id: psalm
- exit code: 1

Error: psalm.xml not found. Exiting...

Psalm Alternative (Static Analysis - **PHPStan**)........................................Failed
- hook id: psalm-alt
- exit code: 1

PHP Deprecated:  mb_encoding_aliases(): Handling Base64 via mbstring is deprecated; use base64_encode/base64_decode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
Deprecated: mb_encoding_aliases(): Handling Base64 via mbstring is deprecated; use base64_encode/base64_decode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
PHP Deprecated:  mb_encoding_aliases(): Handling Uuencode via mbstring is deprecated; use convert_uuencode/convert_uudecode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
Deprecated: mb_encoding_aliases(): Handling Uuencode via mbstring is deprecated; use convert_uuencode/convert_uudecode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
PHP Deprecated:  mb_encoding_aliases(): Handling HTML entities via mbstring is deprecated; use htmlspecialchars, htmlentities, or mb_encode_numericentity/mb_decode_numericentity instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
Deprecated: mb_encoding_aliases(): Handling HTML entities via mbstring is deprecated; use htmlspecialchars, htmlentities, or mb_encode_numericentity/mb_decode_numericentity instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
PHP Deprecated:  mb_encoding_aliases(): Handling QPrint via mbstring is deprecated; use quoted_printable_encode/quoted_printable_decode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
Deprecated: mb_encoding_aliases(): Handling QPrint via mbstring is deprecated; use quoted_printable_encode/quoted_printable_decode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
PHP Deprecated:  mb_encoding_aliases(): Handling Base64 via mbstring is deprecated; use base64_encode/base64_decode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
Deprecated: mb_encoding_aliases(): Handling Base64 via mbstring is deprecated; use base64_encode/base64_decode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
PHP Deprecated:  mb_encoding_aliases(): Handling Uuencode via mbstring is deprecated; use convert_uuencode/convert_uudecode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
Deprecated: mb_encoding_aliases(): Handling Uuencode via mbstring is deprecated; use convert_uuencode/convert_uudecode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
PHP Deprecated:  mb_encoding_aliases(): Handling HTML entities via mbstring is deprecated; use htmlspecialchars, htmlentities, or mb_encode_numericentity/mb_decode_numericentity instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
Deprecated: mb_encoding_aliases(): Handling HTML entities via mbstring is deprecated; use htmlspecialchars, htmlentities, or mb_encode_numericentity/mb_decode_numericentity instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
PHP Deprecated:  mb_encoding_aliases(): Handling QPrint via mbstring is deprecated; use quoted_printable_encode/quoted_printable_decode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
Deprecated: mb_encoding_aliases(): Handling QPrint via mbstring is deprecated; use quoted_printable_encode/quoted_printable_decode instead in phar:///home/ubuntu/pre_commit_test-php/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
At least one path must be specified to analyse.

Local PHP Security Checker...............................................................Passed
Local PHP Security Checker Alternative (**RIPS Code Analysis**)..........................Passed















repos:
  - repo: local
    hooks:
      # PHPStan (Static Analysis)
      - id: phpstan
        name: PHPStan (Static Analysis)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpstan.phar analyse --level=5 --memory-limit=4G --error-format=raw .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpstan.phar analyse --level=5 --memory-limit=4G --error-format=raw .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpstan.phar analyse --level=5 --memory-limit=4G --error-format=raw .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        files: \.php$
        args: ["--memory-limit=4G", "."]  # Added '.' to specify the current directory

      - id: phpstan-alt
        name: PHPStan Alternative (PHPStan's alternative - **Psalm**)
        entry: |
          sh -c '
            # Check if psalm.xml exists
            if [ ! -f "./psalm.xml" ]; then
              echo "Error: psalm.xml not found. Exiting..."
              exit 1
            fi
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--error-level=medium", "."]  # Added '.' to specify the current directory

      # PHPUnit (Unit Testing)
      - id: phpunit
        name: Run PHPUnit
        entry: |
          sh -c '
            retries=3
            count=0
            until php ./php_tools/phpunit.phar --filter TestClassName || [ $count -ge $retries ]; do
              echo "PHPUnit failed. Retrying... ($((count+1))/$retries)"
              count=$((count+1))
              sleep 2
            done
          '
        language: system
        types: [file]
        args: ["--filter", "TestClassName"]

      - id: phpunit-alt
        name: Run PHPUnit Alternative (**Behat** for Behavioral Testing)
        entry: |
          sh -c '
            retries=3
            count=0
            until php ./php_tools/behat.phar || [ $count -ge $retries ]; do
              echo "Behat failed. Retrying... ($((count+1))/$retries)"
              count=$((count+1))
              sleep 2
            done
          '
        language: system
        types: [file]
        args: ["--tags", "not @wip", "."]

      # PHP_CodeSniffer (Coding Standards)
      - id: phpcs
        name: PHP CodeSniffer (PSR-12 Standard)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/* .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/* .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/* .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--ignore=vendor/*", "."]  # Added '.' to specify the current directory

      - id: phpcs-alt
        name: PHP CodeSniffer Alternative (PHP_CodeSniffer with custom standard)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/* .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/* .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpcs.phar --standard=PSR12 --ignore=vendor/* .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--ignore=vendor/*", "."]  # Added '.' to specify the current directory

      # PHP-CS-Fixer
      - id: php-cs-fixer
        name: PHP-CS-Fixer
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/* .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/* .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/* .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--ignore=vendor/*", "."]  # Added '.' to specify the current directory

      - id: php-cs-fixer-alt
        name: PHP-CS-Fixer Alternative (**PHPCBF** - Code Beautifier and Fixer)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/* .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/* .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpcbf.phar --standard=PSR12 --ignore=vendor/* .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--ignore=vendor/*", "."]  # Added '.' to specify the current directory

      # Psalm (Static Analysis)
      - id: psalm
        name: Psalm (Static Analysis)
        entry: |
          sh -c '
            # Check if psalm.xml exists
            if [ ! -f "./psalm.xml" ]; then
              echo "Error: psalm.xml not found. Exiting..."
              exit 1
            fi
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--error-level=medium", "."]  # Added '.' to specify the current directory

      - id: psalm-alt
        name: Psalm Alternative (Static Analysis - **PHPStan**)
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/phpstan.phar analyse --level=5 --memory-limit=2G .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/phpstan.phar analyse --level=5 --memory-limit=2G .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/phpstan.phar analyse --level=5 --memory-limit=2G .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["--memory-limit=2G", "."]  # Added '.' to specify the current directory

      # Local PHP Security Checker
      - id: local-php-security-checker
        name: Local PHP Security Checker
        entry: >
          sh -c '
            if [ -f "C:/php/php.exe" ]; then
                C:/php/php.exe ./php_tools/local-php-security-checker.phar .
            elif [ -f "C:/xampp/php/php.exe" ]; then
                C:/xampp/php/php.exe ./php_tools/local-php-security-checker.phar .
             elif command -v php >/dev/null 2>&1; then
                php ./php_tools/local-php-security-checker.phar .
            else
                echo "[ERROR] PHP not found! Please install PHP."
                exit 1
            fi
          '
        language: system
        types: [file]
        args: ["."]











