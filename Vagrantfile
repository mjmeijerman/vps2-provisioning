# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

require_relative "vagrant_parameters.rb"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.define "vps2.markmeijerman.loc", primary: true do |vps2|
        vps2.vm.box = "f500/debian-stretch64"
        vps2.vm.network :private_network, ip: "192.168.20.103"

        vps2.vm.synced_folder ".", "/vagrant", disabled: true
        $synced_folders.each do |mountpoint, local_path|
            vps2.vm.synced_folder local_path, mountpoint
        end

        vps2.ssh.insert_key = false
        vps2.ssh.forward_agent = true

        vps2.vm.provider :virtualbox do |vb|
            vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
        end

        vps2.vm.provider :virtualbox do |v|
          v.customize ["modifyvm", :id, "--cpus", "1"]
          v.customize ["modifyvm", :id, "--memory", "4096"]
          v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
        end

        vps2.vm.provision :ansible do |ansible|
            ansible.compatibility_mode = "2.0"
            ansible.inventory_path     = "hosts"
            ansible.playbook           = "playbook.yml"
            ansible.limit              = "develop"
            ansible.extra_vars         = {synced_projects: $synced_projects}
        end
    end

end



