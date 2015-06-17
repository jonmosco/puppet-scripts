# -*- mode: ruby -*-
# vi: set ft=ruby

## Memory
MEMORY="512"

Vagrant.configure('2') do |config|
  ## Increase our memory
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "#{MEMORY}"
  end

  ## Node 1: Enterprise Linux 6.6
  config.vm.define 'node1_el6' do |node1|
    node1.vm.box = "puppetlabs/centos-6.6-64-nocm"
    ## Plugin defaults to 'node1' as the hostname
    node1.vm.hostname = 'node1'
    node1.vm.network :private_network, ip: "192.168.34.10"
  end

  ## Node 2: Enterprise Linux 7.0
  config.vm.define 'node2_el7' do |node2|
    node2.vm.box = "puppetlabs/centos-7.0-64-nocm"
    ## Plugin defaults to 'node1' as the hostname
    node2.vm.hostname = 'node2'
    node2.vm.network :private_network, ip: "192.168.34.11"
  end

end
