# -*- mode: ruby -*-
# vi: set ft=ruby

## Memory
MEMORY="384"

Vagrant.configure('2') do |config|
  ## Increase our memory
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  config.vm.provider "vmware_fusion" do |v|
    v.vmx["memsize"] = "#{MEMORY}"
  end

  ## Node 1: Enterprise Linux 6.6
  config.vm.define 'node1_el6' do |node1|
    node1.vm.box = "puppetlabs/centos-6.6-64-nocm"
    node1.vm.hostname = 'node1'
    node1.vm.network :private_network, ip: "192.168.34.10"
  end

  ## Node 2: Enterprise Linux 7.0
  config.vm.define 'node2_el7' do |node2|
    node2.vm.box = "puppetlabs/centos-7.0-64-nocm"
    node2.vm.hostname = 'node2'
    node2.vm.network :private_network, ip: "192.168.34.11"
  end

  ## Node 3: Debian 7
  config.vm.define 'node3_jessie' do |node3|
    node3.vm.box = "puppetlabs/centos-7.0-64-nocm"
    node3.vm.hostname = 'node3'
    node3.vm.network :private_network, ip: "192.168.34.12"
  end

  ## Node 4: Debian 8 Jessie
  #config.vm.define 'node4_jessie' do |node4|
  #  node4.vm.box = "puppetlabs/centos-7.0-64-nocm"
  #  node4.vm.hostname = 'node4'
  #  node4.vm.network :private_network, ip: "192.168.34.13"
  #end

  ## Node 5:
  config.vm.define 'node5_precise' do |node5|
    node5.vm.box = "puppetlabs/ubuntu-12.04-64-nocm"
    node5.vm.hostname = 'node5'
    node5.vm.network :private_network, ip: "192.168.34.14"
  end

  ## Node 6:
  config.vm.define 'node6_trusty' do |node6|
    node6.vm.box = "puppetlabs/ubuntu-14.04-64-nocm"
    node6.vm.hostname = 'node6'
    node6.vm.network :private_network, ip: "192.168.34.15"
  end

end
