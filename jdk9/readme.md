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

The next step will be manual.

Run vagrant ssh:

```
$ vagrant ssh
```

select the source code directory

```
$ cd /home/vagrant/jdk9
```

Run make clean images to generate the JDK9 latest build.

```
$ make clean images LOG=debug
```

This may take up to two hours.

```
----- Build times -------
Start 2015-06-01 14:46:24
End   2015-06-01 16:55:21
00:01:51 verify-modules
02:08:57 TOTAL
-------------------------
/bin/bash /home/vagrant/jdk9/common/bin/logger.sh /home/vagrant/jdk9/build/linux-x86_64-normal-server-release/build.log /usr/bin/printf "Finished building targets 'clean images' in configuration 'linux-x86_64-normal-server-release'\n"
Finished building targets 'clean images' in configuration 'linux-x86_64-normal-server-release'
make[1]: Leaving directory `/home/vagrant/jdk9'
```

License
=======

This module is licensed under the MIT license.

