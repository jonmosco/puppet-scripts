#!/usr/bin/env bash
#
# Install the Puppet 5 Agent on Debian systems

# Debian
# Wheezy: 7
# Jessie: 8
PUPPET_REPO_WHEEZY=puppet5-release-wheezy.deb
PUPPET_REPO_JESSIE=puppet5-release-jessie.deb

# Ubuntu
# Trusty: 14
# Xenial: 16
PUPPET_REPO_14=puppet5-release-trusty.deb
PUPPET_REPO_16=puppet5-release-xenial.deb

# Lets install Puppet!
if lsb_release -a | grep -e "trusty" &> /dev/null; then
  /usr/bin/wget http://apt.puppetlabs.com/${PUPPET_REPO_14}
  dpkg -i  $PUPPET_REPO_14
  apt-get update &> /dev/null
  sleep 5
  apt-get install -y puppet-agent
  update-rc.d puppet defaults
elif lsb_release -a | grep -e "jessie" &> /dev/null; then
  /usr/bin/wget http://apt.puppetlabs.com/${PUPPET_REPO_JESSIE}
  dpkg -i $PUPPET_REPO_JESSIE
  apt-get update &> /dev/null
  apt-get install -y puppet-agent
  systemctl enable puppet
elif lsb_release -a | grep -e "wheezy" &> /dev/null; then
  /usr/bin/wget http://apt.puppetlabs.com/${PUPPET_REPO_WHEEZY}
  dpkg -i $PUPPET_REPO_WHEEZY
  apt-get update &> /dev/null
  apt-get install -y puppet-agent
  update-rc.d puppet defaults
elif lsb_release -a | grep -e "xenial" &> /dev/null; then
  /usr/bin/wget http://apt.puppetlabs.com/${PUPPET_REPO_16}
  dpkg -i $PUPPET_REPO_16
  apt-get update &> /dev/null
  apt-get install -y puppet-agent
  update-rc.d puppet defaults
else
  echo "Unsupported Version of Debian Linux"
fi

# Set up the new path
echo "export PATH=$PATH:/opt/puppetlabs/bin" > /etc/profile.d/puppet.sh
echo "Puppet executibles are located in /opt/puppetlabs.  Run 'source /etc/profile' to update your PATH"
