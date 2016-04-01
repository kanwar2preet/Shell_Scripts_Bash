#! /bin/bash
# Purpose : Installing docker and puppet client  in ubuntu 14.04
#Requirement : Internet connection required

apt-get -yq update;
apt-get install -y curl;
curl -sSL https://get.docker.com/ | sh;
docker run hello-world;

docker --version;
if [ "$?" = "0" ]; 
then
echo " docker is running successfully"
echo " We will now install puppet-agent "
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb;
dpkg -i puppetlabs-release-trusty.deb;
apt-get -yq update;
sudo apt-get install -y puppet;
else
	echo "docker not installed! please check again"
	exit 1
fi
if [ -f /etc/default/puppet ] ; 
then
sed -i 's/START=no/START=yes/' /etc/default/puppet;
#echo `cat /etc/default/puppet | grep -i start ` ;
fi            

#END
