# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "bento/ubuntu-16.04"

  config.vm.network "private_network", ip: "192.168.33.12"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "php"
    vb.memory = "2048"
  end

  # Deploy the base Ansible roles on the machine.
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "deploy_roles.yml"
    ansible.limit = "localhost"
    ansible.inventory_path = "inventories/hosts"
  end

  # Provision the machine.
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "setup_php.yml"
    ansible.limit = "localhost"
    ansible.inventory_path = "inventories/hosts"
  end
end
