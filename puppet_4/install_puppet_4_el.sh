#!/usr/bin/env bash
#
# Install the Puppet 4 Agent on EL systems

PUPPET_REPO_EL6=http://yum.puppetlabs.com/puppetlabs-release-pc1-el-6.noarch.rpm
PUPPET_REPO_EL7=http://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm

# Lets install Puppet!
if cat /etc/*release | grep -e "CentOS" -e "RedHat" &> /dev/null; then
  if cat /etc/redhat-release | grep -q "release 6\." &> /dev/null; then
    rpm -ivh $PUPPET_REPO_EL6
    yum install -y puppet-agent
    chkconfig puppet on
  elif cat /etc/redhat-release | grep -q "release 7\." &> /dev/null; then
    rpm -ivh $PUPPET_REPO_EL7
    yum install -y puppet-agent
    systemctl enable puppet.service
  else
    echo "Unsupported Version of Enterprise Linux"
  fi
fi

# Set up the new path
echo "export PATH=$PATH:/opt/puppetlabs/bin" > /etc/profile.d/puppet.sh
echo "Puppet executibles are located in /opt/puppetlabs.  Run 'source /etc/profile' to update your PATH"
