#!/usr/bin/env ruby

require 'mcollective'
require 'pp'

include MCollective::RPC

# discover
util = rpcclient("rpcutil")
util.progress = false
util.class_filter  /roles::node/
nodes = []
util.ping.each do |resp|
  nodes << resp[:sender]
end
util.disconnect

nodes.each do |node|
  srv = rpcclient("service")
  srv.progress = false
  srv.identity_filter node
  puts "restarting sshd on #{node}"
  srv.restart(:service => "sshd")
  srv.reset
end
