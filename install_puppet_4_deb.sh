#!/usr/bin/env bash
#
# Install the Puppet 4 Agent on Ubuntu systems

PUPPET_REPO_14=puppetlabs-release-pc1-trusty.deb
PUPPET_REPO_12=puppetlabs-release-pc1-precise.deb

# Lets install Puppet!
if `lsb_release -a` | grep -e "14" &> /dev/null; then
  /usr/bin/wget http://apt.puppetlabs.com/${PUPPET_REPO_14}
  dkpg -i  $PUPPET_REPO_14
  apt-get install -y puppet-agent
  update-rd.d puppet-agent defaults
elif `lsb_release -a` | grep -e "12" &> /dev/null; then
  /usr/bin/wget http://apt.puppetlabs.com/${PUPPET_REPO_12}
  dpkg -i $PUPPET_REPO_12
  apt-get install -y puppet-agent
  update-rd.d puppet-agent defaults
else
  echo "Unsupported Version of Ubuntu Linux"
fi

# Set up the new path
echo "export PATH=$PATH:/opt/puppetlabs/bin" > /etc/profile.d/puppet.sh
echo "Puppet executibles are located in /opt/puppetlabs.  Run 'source /etc/profile' to update your PATH"
