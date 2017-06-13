# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end

  config.vm.define "broker" do |broker|
    broker.vm.hostname = "broker"

    broker.vm.network "private_network", ip: "192.168.50.7"
    broker.vm.network "forwarded_port", guest: 2181, host: 2181
    broker.vm.network "forwarded_port", guest: 9092, host: 9092

    broker.vm.provision "ansible" do |ansible|
      ansible.playbook = "broker.yml"
      ansible.verbose = "vvvv"
    end
  end

  config.vm.define "client" do |client|
    client.vm.hostname = "client"

    client.vm.network "private_network", ip: "192.168.50.8"

    client.vm.provision "ansible" do |ansible|
      ansible.playbook = "client.yml"
      ansible.verbose = "vvvv"
    end
  end

  config.vm.define "spark" do |spark|
    spark.vm.provision "ansible" do |ansible|
      ansible.playbook = "spark.yml"
    end
  end
end
