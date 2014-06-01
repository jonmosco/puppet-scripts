#!/usr/bin/env bash
#
# Install the Puppet Agent

PUPPET_REPO=https://yum.puppetlabs.com/el/6/products/x86_64/puppetlabs-release-6-7.noarch.rpm

if cat /etc/*release | grep -e "CentOS" -e "RedHat" &> /dev/null; then
  # Lets install Puppet!
  rpm -ivh $PUPPET_REPO
  yum install -y puppet
  chkconfig puppet on
fi
