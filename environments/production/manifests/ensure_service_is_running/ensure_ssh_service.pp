class ensuressh{
	service{'sshd':
		ensure => running, #same as service sshd start
		enable => true,    #same as chkconfig sshd on
	}
}

