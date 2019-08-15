# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "ubuntu/bionic64" #bionic beaver is ubuntu 18.04
# push to files to vagrant image /tmp/folder from where the vagrant script is running in order to run them from bootstap.sh
# config.vm.provision "file", source: "addvariables.sh", destination: "/tmp/addvariables.sh"
  config.vm.provision "file", source: "mysql.sh", destination: "/tmp/mysql.sh"
  config.vm.provision "file", source: "add_data.sh", destination: "/tmp/add_data.sh"
  config.vm.provision "file", source: "tomcat.sh", destination: "/tmp/tomcat.sh"
  config.vm.provision "file", source: "addvariables.sh", destination: "/tmp/addvariables.sh"
  config.vm.provision "file", source: "nginx.sh", destination: "/tmp/nginx.sh"
  config.vm.provision "file", source: "simplehttpserver.js", destination: "/tmp/simplehttpserver.js"
  config.vm.provision "file", source: "installnodejs.sh", destination: "/tmp/installnodejs.sh"
  config.vm.provision "file", source: "addcron.sh", destination: "/tmp/addcron.sh"
# run the bootstrap.sh file.
  config.vm.provision :shell, :path => "bootstrap_vagrant.sh"
#config.vm.provision :shell, :path => "mysql.sh"
#config.vm.provision :shell, :path => "mysql2.sh"
# config.vm.provision :shell, :path => "f2.sh"


  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access


#if Vagrant.has_plugin?("vagrant-vbguest")
#    config.vbguest.auto_update = false  
#end

  #config.vm.network "forwarded_port", guest: 80, host: 8084, host_ip: "127.0.0.1"
  #config.vm.network "forwarded_port", guest: 9999, host: 8099, host_ip: "127.0.0.1"    
  # config.vm.network "forwarded_port", guest: 8080, host: 8084, host_ip: "127.0.0.1"
#config.vm.network "forwarded_port", guest: 8080, host: 1025, host_ip: "127.0.0.1"
  #config.vm.network "forwarded_port", guest: 3306, host: 3306, host_ip: "127.0.0.1"
#config.vm.network "forwarded_port", guest: 8080, host: 8084, host_ip: "172.118.100.100"
#config.vm.network "forwarded_port", guest: 3306, host: 3307, host_ip: "172.118.100.100"

###############################Changed ip address#######################################################
# config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "172.25.200.200"
  config.vm.network "forwarded_port", guest: 8080, host: 8085, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 3306, host: 3306, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", guest: 3000, host: 3001, host_ip: "127.0.0.1"
  
# Create a private network, which allows host-only access to the machine
# using a specific IP.
  # config.vm.network "private_network", ip: "172.25.200.200"
##################################################################################







   

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "172.118.100.100"



  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
 config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  # vb.gui = true
  vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']

  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
   vb.memory = "2048"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end

# to reprovision the vagrant image run: vagrant reload --provision
