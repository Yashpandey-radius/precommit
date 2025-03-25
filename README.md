Hello User
Follow these two steps:- 

1- Add install.sh in the project root

2- Add .pre-commit-config.yaml in the project root




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
