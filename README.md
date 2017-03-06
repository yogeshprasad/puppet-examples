Install Puppet 4 in a Master-Agent Setup on Ubuntu 14.04 <br />

Install puppet server <br />
      $ cd ~ && wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb <br />
      $ sudo dpkg -i puppetlabs-release-pc1-trusty.deb <br />
      $ sudo apt-get update <br />
      $ sudo apt-get -y install puppetserver <br />
	  $ sudo service puppetserver restart <br />
      $ sudo /opt/puppetlabs/bin/puppet resource service puppetserver ensure=running enable=true <br />
      
Install Puppet Agent <br />
      $ cd ~ && wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb <br />
      $ sudo dpkg -i puppetlabs-release-pc1-trusty.deb <br />
      $ sudo apt-get update <br />
      $ sudo apt-get install puppet-agent <br />
      
      Set the server in puppet.conf and start the service <br />
      
      $ sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true <br />
      
Sign the certificate in puppet server <br />
