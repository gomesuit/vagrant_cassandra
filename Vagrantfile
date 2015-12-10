# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "centos-0604-x64"
  config.vm.box_url = "https://github.com/2creatives/vagrant-centos/releases/download/v6.4.2/centos64-x86_64-20140116.box"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.define "cassandra1" do |cassandra1|
    cassandra1.vm.hostname = "cassandra1"
    cassandra1.vm.network "private_network", ip: "192.168.33.12"
  end
  
  config.vm.define "cassandra2" do |cassandra2|
    cassandra2.vm.hostname = "cassandra2"
    cassandra2.vm.network "private_network", ip: "192.168.33.13"
  end

  config.vm.define "ansible" do |host|
    host.vm.hostname = "ansible"
    host.vm.network "private_network", ip: "192.168.33.11"
    host.vm.provision :shell, :path => "provision.sh"
  end

end
