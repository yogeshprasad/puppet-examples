# Install Puppet 4 in a Master-Agent Setup on Ubuntu 14.04

### Install puppet server
      $ cd ~ && wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
      $ sudo dpkg -i puppetlabs-release-pc1-trusty.deb
      $ sudo apt-get update
      $ sudo apt-get -y install puppetserver
	  $ sudo service puppetserver restart
      $ sudo /opt/puppetlabs/bin/puppet resource service puppetserver ensure=running enable=true
      
### Install Puppet Agent
      $ cd ~ && wget https://apt.puppetlabs.com/puppetlabs-release-pc1-trusty.deb
      $ sudo dpkg -i puppetlabs-release-pc1-trusty.deb
      $ sudo apt-get update
      $ sudo apt-get install puppet-agent
      
      Set the server in puppet.conf and start the service
      [agent]
        server = blr-3rd-1-dhcp135.eng.vmware.com
      
      $ sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true
      
### Sign the certificate in puppet server
      $ sudo cert list
      $ sudo cert sign --all
            or
      $sudo cert sign <agent host name>
