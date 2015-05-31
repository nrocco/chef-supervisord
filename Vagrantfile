# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true

  config.vm.box = 'ubuntu1204'
  config.vm.box_url = 'https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box'

  config.vm.define 'supervisord' do |box|
    box.vm.provision :chef_solo do |chef|
      chef.run_list = [
        'recipe[supervisord]'
      ]
    end
  end
end
