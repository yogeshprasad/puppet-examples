class ensurePort {
	file_line{"ensure port 22":
   		 path => "/etc/ssh/sshd_config",
   		 line => 'Port 22',
	}
}
