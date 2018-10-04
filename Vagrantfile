# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANT_API_VERSION = "2"

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(VAGRANT_API_VERSION) do |config|
  config.vm.box = "debian/stretch64"
  config.vm.hostname = "debian-docker-host"
  
  config.vm.network "private_network", ip: "192.168.100.100"
  
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "~/workspace/", "/vagrant/www"

  config.vm.provision :shell, path: ".vagrantProvider/bootstrap.sh"

  config.vm.provider "virtualbox" do |v|
    v.name = "debian-docker-host"
    v.memory = 1024
    v.cpus = 2
  end

end
