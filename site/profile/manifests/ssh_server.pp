class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCXZlXkIa7aKKYJyBpXVZAQPirm9hUWFCM4r5aVC6acOuGT0FrzJ9OTMmhlorjxzk1gWdh+exPET3jfkSe+mGng19Dn4/D2O+/PiBTN+i9gbUqDGZnakPxw1zkGh3t+P0o/2SMZPGls4U+dPhacpkK66hSa5cKVWupQSM3Hkyte7hwgz4AKwn7fPYClSFgyZmnTQflGPJzli1ebwXZH5C5XWFDHDccjl+7jLAVzvObpUe2YyOUsr8PzrWHUx3FbTeEw9U5k0dGX/VgLi7WmDEvbX+B4oASuCwm4PQtdahXnXp+OfSLpdLaXfc0NkpWGA/oVE0iX1cbn1F2/1/YH6JH1',
	}  
}
