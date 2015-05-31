# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.omnibus.chef_version = :latest
    config.berkshelf.enabled = true

    config.vm.box = "ubuntu1204"
    config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"

    config.vm.define "lib-supervisord" do |box|
        box.vm.hostname = "chef-supervisord.ams1.nl.chef.local"
        box.vm.network "private_network", ip: "172.10.10.2"

        box.vm.provision :chef_solo do |chef|
            chef.run_list = [
                    "recipe[supervisord]"
            ]
        end
    end
end
