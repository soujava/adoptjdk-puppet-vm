Description
===========
Ubuntu 12.04 Sandbox is a vagrant [Vagrant](http://vagrantup.com/)-based Puppet
development environment used for running and testing OpenJDK 9 modules.

It has never been so easy to build the OpenJDK project. vagrant up will get you up and running o/
![OpenJDK](https://soujavablog.files.wordpress.com/2015/05/openjdk.jpg)

Requirements
============

To use this, you must have the following items installed and working:

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant 1.7+](http://vagrantup.com/)

Usage
=====

Clone
-----

* Clone this project folder
* create a empty folder src (this is where your openjdk sources will be downloaded)

Initial Startup
---------------

To bring up the Puppet Sandbox environment, issue the following command:

```
    $ vagrant up
```

Puppet will install Mercurial and OpenJDK 8.

Clone OpenJDK 9 project.

Get get_source.sh in order to download all OpenJDK 8 sources.

Run bash configure to ensure its all ready for the build.

Run make images.

License
=======

This module is licensed under the MIT license.

