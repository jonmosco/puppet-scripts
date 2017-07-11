Puppet install and misc scripts
===============================
A collection of scripts for installing Puppet on EL and Debian based systems.

This repo tries to follow the official Puppet Docs.

Puppet 4: See [docs.puppet.com](https://docs.puppet.com/puppet/4.10/puppet_collections.html) for the manual steps

Puppet 5: See [docs.puppet.com](https://docs.puppet.com/puppet/5.0/puppet_platform.html) for the manual steps

Agent Installation scripts
--------------------------

The agent install scripts follow the official puppet docs.  It will check which
version of enterprise linux, Debian derivative, install the appropriate
repository, and install the puppet agent package.  After, it will enable the
service and add /opt/puppetlabs/bin to the PATH.

* Puppet 4
  * install_puppet_4_deb.sh
  * install_puppet_4_el.sh
* Puppet 5
  * install_puppet_5_deb.sh
  * install_puppet_5_el.sh

Usage
-----

Copy the script, or clone this repo to your host , and run the script for your platform:

```
$ chmod +x install_puppet_5_el.sh
$ sudo ./install_puppet_5_el.sh
```

Verify the installation:

```
$ source /etc/profile
$ puppet -V
```

Misc
----

Some miscellaneous MCollective inventory scripts

* distro_inventory.rb
* inventory.rb
* inventory2.rb
* mco_restart.{rb,sh}

Vagrant
-------

This repo contains a Vagrant file for testing these scripts for each of the
versions that get installed.

To use the vagrant environment:
```
$ vagrant up --provider=virtualbox
$ vagrant status
```

Contributing
============

Please submit patches to any of these scripts via pull requests.
