write pre-commit file in .git/hooks/pre-commit

Add install.sh in the project root

Add .pre-commit-config.yaml in the project root



./install.sh 
[INFO] Detected platform: Linux (Linux or macOS)
[INFO] Checking PHP installation...
[INFO] PHP is already installed. Version: 8.3.16
[INFO] PHP version >= 7 detected. PHP-CS-Fixer will be installed.
[INFO] Creating php_tools directory...
[INFO] Downloading PHPStan... (attempting .phar download)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 18.2M  100 18.2M    0     0  10.8M      0  0:00:01  0:00:01 --:--:-- 46.8M
[INFO] PHPStan downloaded and made executable.
[INFO] Downloading PHP_CodeSniffer... (attempting .phar download)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 1363k  100 1363k    0     0   921k      0  0:00:01  0:00:01 --:--:-- 6652k
[INFO] PHP_CodeSniffer downloaded and made executable.
[INFO] Downloading Psalm... (attempting .phar download)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 11.0M  100 11.0M    0     0  6721k      0  0:00:01  0:00:01 --:--:-- 28.2M
[INFO] Psalm downloaded and made executable.
[INFO] Downloading PHPUnit... (attempting .phar download)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   138    0   138    0     0    113      0 --:--:--  0:00:01 --:--:--   113
100 5417k  100 5417k    0     0  4062k      0  0:00:01  0:00:01 --:--:-- 4062k
[INFO] PHPUnit downloaded and made executable.
[INFO] Downloading Behat... (attempting .phar download)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 3089k  100 3089k    0     0  2011k      0  0:00:01  0:00:01 --:--:-- 13.0M
[INFO] Behat downloaded and made executable.
[INFO] Downloading PHP Code Beautifier and Fixer (phpcbf)... (attempting .phar download)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 1363k  100 1363k    0     0   889k      0  0:00:01  0:00:01 --:--:-- 5705k
[INFO] PHP Code Beautifier and Fixer (phpcbf) downloaded and made executable.
[INFO] Downloading RIPS Code Analysis... (attempting .phar download)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100     9  100     9    0     0     36      0 --:--:-- --:--:-- --:--:--    36
[INFO] RIPS Code Analysis downloaded and made executable.
[INFO] PHP version >= 8 detected. Bypassing PHP-CS-Fixer version check.
[INFO] Downloading PHP-CS-Fixer... (attempting .phar download)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
  0     0    0     0    0     0      0      0 --:--:-- --:--:-- --:--:--     0
100 2107k  100 2107k    0     0  1373k      0  0:00:01  0:00:01 --:--:-- 79.1M
[INFO] PHP-CS-Fixer downloaded and made executable.
[INFO] Downloading Local PHP Security Checker... (attempting .phar download)
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100     9  100     9    0     0     37      0 --:--:-- --:--:-- --:--:--    37
[INFO] Local PHP Security Checker downloaded and made executable.
[INFO] Checking if pre-commit is installed...
[INFO] Ensuring pre-commit is installed via apt...
[INFO] pre-commit is not installed. Installing via apt...
sudo: apt: command not found
[INFO] Ensuring pre-commit is installed via pip...
[INFO] pre-commit is still missing. Installing via pip...
/usr/bin/python3: No module named pip
[INFO] Ensuring pre-commit is installed via pipx...
[INFO] pre-commit is still missing. Installing via pipx...
./install.sh: line 194: pipx: command not found
[INFO] Running 'pre-commit install' to set up git hooks...
./install.sh: line 200: pre-commit: command not found
[INFO] Installation completed successfully!
[root@ip-172-31-1-82 torrentpower_version_update]# 
