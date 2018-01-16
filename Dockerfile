FROM ubuntu
#RUN apt-get update &&apt-get install phpldapadmin ldap-utils vim curl -y 
RUN apt-get update
RUN apt-get install vim curl openvpn easy-rsa openvpn-auth-ldap -y 
ADD openvpn/ /etc/openvpn/ 
WORKDIR /etc/openvpn 
CMD ["/usr/sbin/openvpn", "--config", "server.conf"]
