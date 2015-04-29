Description
===========

Debian8 Sandbox is a multi-VM [Vagrant](http://vagrantup.com/)-based Puppet
development environment used for running and testing OpenJDK8 modules.

Requirements
============

To use this, you must have the following items installed and working:

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant 1.1+](http://vagrantup.com/)

Usage
=====

Initial Startup
---------------

To bring up the Puppet Sandbox environment, issue the following command:

    $ vagrant up

Puppet will install mercurial, openjdk and clone openjdk project.

License
=======

This module is licensed under the MIT license.
