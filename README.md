Manages /etc/resolv.conf and keeps the host line in /etc/hosts

resolv.conf is set based on the server's IP address and what dc is at that site. It uses facter to determine what the site is and then sets the namserver accordingly using sx/wa as backups. The list is static so as new sites roll out the module will need to be updated to include them.
