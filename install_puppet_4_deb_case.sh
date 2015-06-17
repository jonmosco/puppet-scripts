#!/usr/bin/env bash
#
# Install the Puppet 4 Agent on Debian systems

PUPPET_REPO_JESSIE=puppetlabs-release-jessie.deb
PUPPET_REPO_PRECISE=puppetlabs-release-pc1-precise.deb
PUPPET_REPO_TRUSTY=puppetlabs-release-pc1-trusty.deb

RELEASE=`lsb_release -a`

# Lets install Puppet!
case $RELEASE in
  jessie)
    /usr/bin/wget http://apt.puppetlabs.com/${PUPPET_REPO_JESSIE}
    dpkg -i  $PUPPET_REPO_JESSIE
    apt-get update &> /dev/null
    apt-get install -y puppet-agent
    systemctl enable puppet
    ;;
  precise)
    /usr/bin/wget http://apt.puppetlabs.com/${PUPPET_REPO_PRECISE}
    dpkg -i $PUPPET_REPO_PRECISE
    apt-get update &> /dev/null
    apt-get install -y puppet-agent
    update-rc.d puppet defaults
    ;;
  trusty)
    /usr/bin/wget http://apt.puppetlabs.com/${PUPPET_REPO_TRUSTY}
    dpkg -i $PUPPET_REPO_TRUSTY
    apt-get update &> /dev/null
    apt-get install -y puppet-agent
    update-rc.d puppet defaults
    ;;
  *)
  echo "Unsupported Version of Debian Linux"
  ;;
esac

# Set up the new path
echo "export PATH=$PATH:/opt/puppetlabs/bin" > /etc/profile.d/puppet.sh
echo "Puppet executibles are located in /opt/puppetlabs.  Run 'source /etc/profile' to update your PATH"
