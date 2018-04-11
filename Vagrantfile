# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "imartinezortiz/xenial64-docker"

	config.vm.network "forwarded_port", guest: 8080, host: 8081
  config.vm.network "forwarded_port", guest: 8081, host: 8082

  config.vm.provision "shell", inline: <<-SHELL
		mkdir -p /opt/docker/compose
		cp -r /vagrant/actidoo-docker /opt/docker/compose/actidoo
		
		cp "/vagrant/docker-compose@.service" /etc/systemd/system
		systemctl enable docker-compose@actidoo
		systemctl start docker-compose@actidoo
  SHELL
end
