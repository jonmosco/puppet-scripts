#!/usr/bin/env bash
#
# Install the Puppet 4 Agent

PUPPET_REPO=http://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

if cat /etc/*release | grep -e "CentOS" -e "RedHat" &> /dev/null; then
  # Lets install Puppet!
  rpm -ivh $PUPPET_REPO
  yum install -y puppet-agent
  chkconfig puppet on
fi

# Set up the new path
echo "pathmunge /opt/puppetlabs/bin" > /etc/profiles.d/puppet.sh
source ./profile
