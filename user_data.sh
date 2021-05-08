sudo su
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
systemctl start httpd
cat << EOF > /var/www/html/index.html
<html><body bgcolor=black><center><h1><p><font color=red>Hellow</h1></center></body></html/"  > /var/www/html/index.html
EOF
systemctl restart httpd
systemctl enable httpd
