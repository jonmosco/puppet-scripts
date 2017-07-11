#!/usr/bin/env bash
#
# Install the Puppet 5 Agent on EL systems

PUPPET_REPO_EL5=https://yum.puppetlabs.com/puppet5/puppet5-release-el-5.noarch.rpm
PUPPET_REPO_EL6=https://yum.puppetlabs.com/puppet5/puppet5-release-el-6.noarch.rpm
PUPPET_REPO_EL7=https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm

# Lets install Puppet!
if cat /etc/*release | grep -e "CentOS" -e "RedHat" &> /dev/null; then
  if grep -q "release 5\." /etc/redhat-release &> /dev/null; then
    rpm -Uvh $PUPPET_REPO_EL5
    yum install -y puppet-agent
    /sbin/chkconfig puppet on
  elif grep -q "release 6\." /etc/redhat-release &> /dev/null; then
    rpm -Uvh $PUPPET_REPO_EL6
    yum install -y puppet-agent
    /sbin/chkconfig puppet on
  elif grep -q "release 7\." /etc/redhat-release &> /dev/null; then
    rpm -Uvh $PUPPET_REPO_EL7
    yum install -y puppet-agent
    systemctl enable puppet.service
  else
    echo "Unsupported Version of Enterprise Linux"
  fi
fi

# Set up the new path
echo "export PATH=$PATH:/opt/puppetlabs/bin" > /etc/profile.d/puppet.sh
echo "Puppet executibles are located in /opt/puppetlabs.  Run 'source /etc/profile' to update your PATH"
