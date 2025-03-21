write pre-commit file in .git/hooks/pre-commit

Add install.sh in the project root

Add .pre-commit-config.yaml in the project root




git commit -m "T"
PHPStan (Static Analysis)....................................................................Passed
PHPStan Alternative (PHPStan's alternative - **Psalm**)......................................Failed
- hook id: phpstan-alt
- exit code: 1

Could not resolve path to config psalm.xml

Run PHPUnit..................................................................................Failed
- hook id: phpunit
- exit code: 1

repos:
  # PHPStan (Static Analysis)
  - repo: local
    hooks:
      - id: phpstan
        name: PHPStan (Static Analysis)
        entry: php ./php_tools/phpstan.phar analyse --level=5
        language: system
        types: [file]
        args: ["--memory-limit=4G"]  # Removed --autoload-file as you aren't using Composer

      - id: phpstan-alt
        name: PHPStan Alternative (PHPStan's alternative - **Psalm**)
        entry: php ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true
        language: system
        types: [file]
        args: ["--error-level=medium"]

  # PHPUnit (Unit Testing)
  - repo: local
    hooks:
      - id: phpunit
        name: Run PHPUnit
        entry: php ./php_tools/phpunit.phar --filter TestClassName  # Changed to use the downloaded phpunit.phar
        language: system
        types: [file]
        args: ["--filter", "TestClassName"]

      - id: phpunit-alt
        name: Run PHPUnit Alternative (**Behat** for Behavioral Testing)
        entry: php ./php_tools/behat.phar
        language: system
        types: [file]
        args: ["--tags", "not @wip", "."]

  # PHP_CodeSniffer (Coding Standards)
  - repo: local
    hooks:
      - id: phpcs
        name: PHP CodeSniffer (PSR-12 Standard)
        entry: php ./php_tools/phpcs.phar --standard=PSR12
        language: system
        types: [file]
        args: ["--ignore=vendor/*"]

      - id: phpcs-alt
        name: PHP CodeSniffer Alternative (**PHP_CodeSniffer with custom standard**)
        entry: php ./php_tools/phpcs.phar --standard=PSR12
        language: system
        types: [file]
        args: ["--ignore=vendor/*"]

  # PHP-CS-Fixer
  - repo: local
    hooks:
      - id: php-cs-fixer
        name: PHP-CS-Fixer
        entry: php ./php_tools/phpcbf.phar --standard=PSR12
        language: system
        types: [file]
        args: ["--ignore=vendor/*"]

      - id: php-cs-fixer-alt
        name: PHP-CS-Fixer Alternative (**PHPCBF** - Code Beautifier and Fixer)
        entry: php ./php_tools/phpcbf.phar --standard=PSR12
        language: system
        types: [file]
        args: ["--ignore=vendor/*"]

  # Psalm (Static Analysis)
  - repo: local
    hooks:
      - id: psalm
        name: Psalm (Static Analysis)
        entry: php ./php_tools/psalm.phar --config=psalm.xml --no-cache --show-info=true
        language: system
        types: [file]
        args: ["--error-level=medium"]

      - id: psalm-alt
        name: Psalm Alternative (Static Analysis - **PHPStan**)
        entry: php ./php_tools/phpstan.phar analyse --level=5
        language: system
        types: [file]
        args: ["--memory-limit=2G"]

  # Local PHP Security Checker
  - repo: local
    hooks:
      - id: local-php-security-checker
        name: Local PHP Security Checker
        entry: php ./php_tools/local-php-security-checker.phar
        language: system
        types: [file]

      - id: local-php-security-checker-alt
        name: Local PHP Security Checker Alternative (**RIPS Code Analysis**)
        entry: php ./php_tools/rips.phar
        language: system
        types: [file]

default_stages:
  - pre-commit
Class InternalIterator declared in /home/ubuntu/torrentpower_version_update/.pre-commit-config.yaml does not extend PHPUnit\Framework\TestCase

Run PHPUnit Alternative (**Behat** for Behavioral Testing)...................................Failed
- hook id: phpunit-alt
- exit code: 1

                                                   
  Too many arguments, expected arguments "paths".  
                                                   

behat [-s|--suite SUITE] [-f|--format FORMAT] [-o|--out OUT] [--format-settings FORMAT-SETTINGS] [--init] [--lang LANG] [--name NAME] [--tags TAGS] [--role ROLE] [--story-syntax] [-d|--definitions DEFINITIONS] [--snippets-for [SNIPPETS-FOR]] [--snippets-type SNIPPETS-TYPE] [--append-snippets] [--no-snippets] [--strict] [--order ORDER] [--rerun] [--stop-on-failure] [--dry-run] [--] [<paths>]

PHP CodeSniffer (PSR-12 Standard)............................................................Passed
PHP CodeSniffer Alternative (**PHP_CodeSniffer with custom standard**).......................Passed
PHP-CS-Fixer.................................................................................Passed
PHP-CS-Fixer Alternative (**PHPCBF** - Code Beautifier and Fixer)............................Passed
Psalm (Static Analysis)......................................................................Failed
- hook id: psalm
- exit code: 1

Could not resolve path to config psalm.xml

Psalm Alternative (Static Analysis - **PHPStan**)............................................Passed
Local PHP Security Checker...................................................................Passed
Local PHP Security Checker Alternative (**RIPS Code Analysis**)..............................Passed
root@ip-172-31-3-206:/home/ubuntu/torrentpower_version_update# 

