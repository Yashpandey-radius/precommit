write pre-commit file in .git/hooks/pre-commit

Add install.sh in the project root

Add .pre-commit-config.yaml in the project root


./install.sh 
Detected platform: Linux (Linux or macOS)
Checking PHP installation...
PHP is already installed. Version: 8.3.16
PHP version >= 7 detected. PHP-CS-Fixer will be installed.
Downloading PHPStan...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 18.2M  100 18.2M    0     0  3890k      0  0:00:04  0:00:04 --:--:-- 5480k
PHPStan downloaded and made executable.
Downloading PHP_CodeSniffer...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 1363k  100 1363k    0     0   628k      0  0:00:02  0:00:02 --:--:-- 1582k
PHP_CodeSniffer downloaded and made executable.
Downloading Psalm...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 11.0M  100 11.0M    0     0  4782k      0  0:00:02  0:00:02 --:--:-- 10.7M
Psalm downloaded and made executable.
Downloading PHPUnit...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   138    0   138    0     0    104      0 --:--:--  0:00:01 --:--:--   104
100 5417k  100 5417k    0     0  2081k      0  0:00:02  0:00:02 --:--:-- 18.7M
PHPUnit downloaded and made executable.
PHP version >= 8 detected. Bypassing PHP-CS-Fixer version check.
Downloading PHP-CS-Fixer...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 2107k  100 2107k    0     0   998k      0  0:00:02  0:00:02 --:--:-- 3560k
PHP-CS-Fixer downloaded and made executable.
Downloading Local PHP Security Checker...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100     9  100     9    0     0     37      0 --:--:-- --:--:-- --:--:--    37
Local PHP Security Checker downloaded and made executable.
phpstan.phar is ready.
phpunit.phar is ready.
phpcs.phar is ready.
psalm.phar is ready.
php-cs-fixer.phar is ready.
local-php-security-checker.phar is ready.
Checking pre-commit installation...
pre-commit is not installed. Installing pre-commit...
./install.sh: line 141: pip: command not found
Installing pre-commit hooks...
./install.sh: line 151: pre-commit: command not found
Testing phpstan...
PHPStan - PHP Static Analysis Tool 1.0.0
Testing phpunit...
PHPUnit 12.0.9 by Sebastian Bergmann and contributors.

Testing phpcs...
PHP_CodeSniffer version 3.7.2 (stable) by Squiz (http://www.squiz.net)
Testing psalm...
Psalm 4.x-dev@
Testing php-cs-fixer...
PHP needs to be a minimum version of PHP 7.1.3 and maximum version of PHP 8.0.*.
Current PHP version: 8.3.16.
Ignoring environment requirements because `PHP_CS_FIXER_IGNORE_ENV` is set. Execution may be unstable.
PHP CS Fixer 3.0.0 Constitution by Fabien Potencier and Dariusz Ruminski (c15377b)
Testing local-php-security-checker...
Not FoundIncreasing PHPStan memory limit...
PHP Deprecated:  mb_encoding_aliases(): Handling Base64 via mbstring is deprecated; use base64_encode/base64_decode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
Deprecated: mb_encoding_aliases(): Handling Base64 via mbstring is deprecated; use base64_encode/base64_decode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
PHP Deprecated:  mb_encoding_aliases(): Handling Uuencode via mbstring is deprecated; use convert_uuencode/convert_uudecode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
Deprecated: mb_encoding_aliases(): Handling Uuencode via mbstring is deprecated; use convert_uuencode/convert_uudecode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
PHP Deprecated:  mb_encoding_aliases(): Handling HTML entities via mbstring is deprecated; use htmlspecialchars, htmlentities, or mb_encode_numericentity/mb_decode_numericentity instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
Deprecated: mb_encoding_aliases(): Handling HTML entities via mbstring is deprecated; use htmlspecialchars, htmlentities, or mb_encode_numericentity/mb_decode_numericentity instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
PHP Deprecated:  mb_encoding_aliases(): Handling QPrint via mbstring is deprecated; use quoted_printable_encode/quoted_printable_decode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
Deprecated: mb_encoding_aliases(): Handling QPrint via mbstring is deprecated; use quoted_printable_encode/quoted_printable_decode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/MbFunctionsReturnTypeExtension.php on line 29
PHP Deprecated:  mb_encoding_aliases(): Handling Base64 via mbstring is deprecated; use base64_encode/base64_decode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
Deprecated: mb_encoding_aliases(): Handling Base64 via mbstring is deprecated; use base64_encode/base64_decode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
PHP Deprecated:  mb_encoding_aliases(): Handling Uuencode via mbstring is deprecated; use convert_uuencode/convert_uudecode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
Deprecated: mb_encoding_aliases(): Handling Uuencode via mbstring is deprecated; use convert_uuencode/convert_uudecode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
PHP Deprecated:  mb_encoding_aliases(): Handling HTML entities via mbstring is deprecated; use htmlspecialchars, htmlentities, or mb_encode_numericentity/mb_decode_numericentity instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
Deprecated: mb_encoding_aliases(): Handling HTML entities via mbstring is deprecated; use htmlspecialchars, htmlentities, or mb_encode_numericentity/mb_decode_numericentity instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
PHP Deprecated:  mb_encoding_aliases(): Handling QPrint via mbstring is deprecated; use quoted_printable_encode/quoted_printable_decode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
Deprecated: mb_encoding_aliases(): Handling QPrint via mbstring is deprecated; use quoted_printable_encode/quoted_printable_decode instead in phar:///home/ec2-user/torrentpower_version_update/php_tools/phpstan.phar/src/Type/Php/StrSplitFunctionReturnTypeExtension.php on line 31
At least one path must be specified to analyse.
✅ All PHP tools installed and tested successfully!
[root@ip-172-31-13-200 torrentpower_version_update]# 
