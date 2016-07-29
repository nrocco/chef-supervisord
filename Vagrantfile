# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure('2') do |config|
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true
  config.ssh.forward_agent = true

  config.vm.define 'supervisord' do |box|
    box.vm.box = 'bento/ubuntu-16.04'

    box.vm.provision :chef_zero do |chef|
      chef.nodes_path = ''
      chef.data_bags_path = ''
      chef.encrypted_data_bag_secret_key_path = ''

      chef.run_list = [
        'recipe[apt]',
        'recipe[supervisord]'
      ]
    end
  end
end
