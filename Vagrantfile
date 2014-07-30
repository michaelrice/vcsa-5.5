# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "vcsa-5.5"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 443, host: 8443
  config.vm.network "forwarded_port", guest: 5480, host: 5480
  config.vm.network "forwarded_port", guest: 9443, host: 9443

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  #config.vm.network "private_network", type: "dhcp", auto_config: false
  #config.ssh.username = "root"
  #config.ssh.password = "vmware"
  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  #config.vm.network "public_network", type: "dhcp"

  # Leave this because there are no box tools in the guest and
  # it will freak out and bork when its booting when it reaches
  # the point of trying to do this.
  config.vm.synced_folder ".", "/vagrant", disabled: true

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  #config.vm.provider "virtualbox" do |vb|
    # Don't boot with headless mode
  #   vb.gui = true
  
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  #end
  #

  # enable provisioning with our shell script
  config.vm.provision "shell", path: 'provision/make_root_ssh.sh'
end
