Puppet related scripts
======================
A collection of scripts for installing Puppet on EL and Debian based systems.

This repo tries to follow the official Puppet Docs.

Puppet 4: See [docs.puppet.com](https://docs.puppet.com/puppet/4.10/puppet_collections.html) for the manual steps

Puppet 5: See [docs.puppet.com](https://docs.puppet.com/puppet/5.0/puppet_platform.html) for the manual steps

Agent Installation scripts
--------------------------

* Puppet 4
  * install_puppet_4_deb.sh
  * install_puppet_4_el.sh
* Puppet 5
  * install_puppet_5_deb.sh
  * install_puppet_5_el.sh

Usage
-----

Copy either the EL or Deb script to your host in /tmp, and run the script:

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

* distro_inventory.rb
* inventory.rb
* inventory2.rb
* mco_restart.{rb,sh}

Vagrant
-------

This repo contains a Vagrant file for testing these scripts
