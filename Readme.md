In case there is no possibility to use korn shell, this image could be used for converton
from nmon csv files to html pages. Just run command:
docker run --rm -v [some_host_folder_with_nmon_files]:/sharedvolume igrytsyk/centos_ksh_nmonchart


Html pages with charts will be produced to html folder inside given folder with nmon files.