# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.cache.auto_detect = true
  config.omnibus.chef_version = "11.6.0"

  config.vm.network :forwarded_port, guest: 8000, host: 8000

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network :private_network, ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

  config.ssh.forward_agent = true

  config.vm.synced_folder "www", "/var/www", create: true

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
    # chef.data_bags_path = "../my-recipes/data_bags"

    chef.add_role "agora-ciudadana"

    # You may also specify custom JSON attributes:
    # chef.json = { :mysql_password => "foo" }
  end
end
