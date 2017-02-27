class ensshcfg {
	file {'/etc/ssh/sshd_config':
		ensure => present,
	}
}
