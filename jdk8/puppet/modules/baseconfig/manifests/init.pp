# == Class: baseconfig
#
# Performs initial configuration tasks for all Vagrant boxes.
#
class baseconfig {
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update';
  }

  #install mercurial
  class { 'mercurial': }

  exec { 'clone openjdk files':
    command => "/usr/bin/hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8 && chown -R vagrant:vagrant jdk8";
  }

  host { 'hostmachine':
    ip => '192.168.0.1';
  }

}
