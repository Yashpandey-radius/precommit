
Add install.sh in the project root

Add .pre-commit-config.yaml in the project root



./install.sh 
[INFO] Detected platform: Linux (Linux or macOS)
[INFO] Checking PHP installation...
[INFO] PHP is not installed. Installing PHP...
[INFO] Detected Ubuntu. Installing PHP...
Hit:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble InRelease
Get:2 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates InRelease [126 kB]
Get:3 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports InRelease [126 kB]
Get:4 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 Packages [15.0 MB]
Get:5 http://security.ubuntu.com/ubuntu noble-security InRelease [126 kB]
Get:6 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe Translation-en [5982 kB]
Get:7 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 Components [3871 kB]
Get:8 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/universe amd64 c-n-f Metadata [301 kB]
Get:9 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/multiverse amd64 Packages [269 kB]
Get:10 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/multiverse Translation-en [118 kB]
Get:11 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/multiverse amd64 Components [35.0 kB]
Get:12 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble/multiverse amd64 c-n-f Metadata [8328 B]
Get:13 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 Packages [922 kB]
Get:14 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main Translation-en [209 kB]
Get:15 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 Components [151 kB]
Get:16 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/main amd64 c-n-f Metadata [13.5 kB]
Get:17 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 Packages [1041 kB]
Get:18 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe Translation-en [262 kB]
Get:19 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 Components [364 kB]
Get:20 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/universe amd64 c-n-f Metadata [25.9 kB]
Get:21 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Packages [759 kB]
Get:22 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/restricted Translation-en [153 kB]
Get:23 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/restricted amd64 Components [212 B]
Get:24 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/restricted amd64 c-n-f Metadata [464 B]
Get:25 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Packages [30.1 kB]
Get:26 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/multiverse Translation-en [5884 B]
Get:27 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 Components [940 B]
Get:28 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates/multiverse amd64 c-n-f Metadata [656 B]
Get:29 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/main amd64 Packages [39.1 kB]
Get:30 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/main Translation-en [8676 B]
Get:31 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/main amd64 Components [7076 B]
Get:32 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/main amd64 c-n-f Metadata [272 B]
Get:33 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/universe amd64 Packages [26.4 kB]
Get:34 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/universe Translation-en [16.3 kB]
Get:35 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/universe amd64 Components [21.3 kB]
Get:36 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/universe amd64 c-n-f Metadata [1304 B]
Get:37 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/restricted amd64 Components [216 B]
Get:38 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/restricted amd64 c-n-f Metadata [116 B]
Get:39 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 Components [212 B]
Get:40 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports/multiverse amd64 c-n-f Metadata [116 B]
Get:41 http://security.ubuntu.com/ubuntu noble-security/main amd64 Packages [671 kB]
Get:42 http://security.ubuntu.com/ubuntu noble-security/main Translation-en [130 kB]
Get:43 http://security.ubuntu.com/ubuntu noble-security/main amd64 Components [8992 B]
Get:44 http://security.ubuntu.com/ubuntu noble-security/main amd64 c-n-f Metadata [6936 B]
Get:45 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Packages [820 kB]
Get:46 http://security.ubuntu.com/ubuntu noble-security/universe Translation-en [177 kB]                                          
Get:47 http://security.ubuntu.com/ubuntu noble-security/universe amd64 Components [52.0 kB]                                       
Get:48 http://security.ubuntu.com/ubuntu noble-security/universe amd64 c-n-f Metadata [17.0 kB]                                   
Get:49 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Packages [726 kB]                                        
Get:50 http://security.ubuntu.com/ubuntu noble-security/restricted Translation-en [146 kB]                                        
Get:51 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 Components [208 B]                                       
Get:52 http://security.ubuntu.com/ubuntu noble-security/restricted amd64 c-n-f Metadata [432 B]                                   
Get:53 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Packages [26.2 kB]                                       
Get:54 http://security.ubuntu.com/ubuntu noble-security/multiverse Translation-en [4892 B]                                        
Get:55 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 Components [208 B]                                       
Get:56 http://security.ubuntu.com/ubuntu noble-security/multiverse amd64 c-n-f Metadata [448 B]                                   
Fetched 32.8 MB in 12s (2806 kB/s)                                                                                                
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
23 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Note, selecting 'php8.3-opcache' instead of 'php-opcache'
Note, selecting 'php8.3-mysql' instead of 'php-mysqli'
Note, selecting 'php8.3-common' instead of 'php-calendar'
Note, selecting 'php8.3-common' instead of 'php-ftp'
Note, selecting 'php8.3-common' instead of 'php-iconv'
Note, selecting 'php8.3-mysql' instead of 'php-mysqli'
Note, selecting 'php8.3-opcache' instead of 'php-opcache'
Note, selecting 'php8.3-common' instead of 'php-posix'
Note, selecting 'php8.3-common' instead of 'php-pdo'
Note, selecting 'php8.3-common' instead of 'php-sockets'
Note, selecting 'php8.3-xml' instead of 'php-xmlreader'
Note, selecting 'php8.3-xml' instead of 'php-xsl'
E: Unable to locate package php-gettext
E: Unable to locate package php-pdo_mysql
E: Unable to locate package php-zlib
./install.sh: line 128: [: : integer expression expected
[ERROR] [ERROR] PHP version lower than 7 detected. Please update PHP to at least version 7.
root@ip-172-31-1-95:/home/ubuntu/torrentpower_version_update# ./install.sh 
[INFO] Detected platform: Linux (Linux or macOS)
[INFO] Checking PHP installation...
[INFO] PHP is not installed. Installing PHP...
[INFO] Detected Ubuntu. Installing PHP...
Hit:1 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble InRelease
Hit:2 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-updates InRelease
Hit:3 http://ap-south-1.ec2.archive.ubuntu.com/ubuntu noble-backports InRelease
Hit:4 http://security.ubuntu.com/ubuntu noble-security InRelease
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
23 packages can be upgraded. Run 'apt list --upgradable' to see them.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
Note, selecting 'php8.3-opcache' instead of 'php-opcache'
Note, selecting 'php8.3-mysql' instead of 'php-mysqli'
Note, selecting 'php8.3-common' instead of 'php-calendar'
Note, selecting 'php8.3-common' instead of 'php-ftp'
Note, selecting 'php8.3-common' instead of 'php-iconv'
Note, selecting 'php8.3-mysql' instead of 'php-mysqli'
Note, selecting 'php8.3-opcache' instead of 'php-opcache'
Note, selecting 'php8.3-common' instead of 'php-posix'
Note, selecting 'php8.3-common' instead of 'php-pdo'
Note, selecting 'php8.3-common' instead of 'php-sockets'
Note, selecting 'php8.3-xml' instead of 'php-xmlreader'
Note, selecting 'php8.3-xml' instead of 'php-xsl'
E: Unable to locate package php-gettext
E: Unable to locate package php-pdo_mysql
E: Unable to locate package php-zlib
./install.sh: line 128: [: : integer expression expected
[ERROR] [ERROR] PHP version lower than 7 detected. Please update PHP to at least version 7.
root@ip-172-31-1-95:/home/ubuntu/torrentpower_version_update# php -v
Command 'php' not found, but can be installed with:
apt install php-cli     # version 2:8.2+93ubuntu1, or
apt install php8.2-cli  # version 8.2.12-1ubuntu2
apt install php8.3-cli  # version 8.3.6-0ubuntu0.24.04.3

