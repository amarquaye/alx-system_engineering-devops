#!/usr/bin/env bash
# Using puppet to make changes to our configigurations

file {'etc/ssh/ssh_config':
	ensure => present,

content => "
	#SSH_client configuration
	host*
	IdentifyFile ~/.ssh/school
	PasswordAuthentication no
	"
}
