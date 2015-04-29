# create a new run stage to ensure certain modules are included first
stage { 'pre':
  before => Stage['main']
}

# add the baseconfig module to the new 'pre' run stage
class { 'baseconfig':
  stage => 'pre'
}


#install jdk
class { 'java': }


#prepare for build, get the submodules of jdk
#exec { 'prepare build for openjdk8':
#  path     => '/',
#  command => 'chmod +x jdk8/get_source.sh && bash jdk8/get_source.sh';
#}

#compile and make images
#exec { 'build openjdk8':
#  path     => '/bin/bash',
#  command => '/bin/cd ~/jdk8 && /bin/bash make images';
#}



# set defaults for file ownership/permissions
File {
  owner => 'root',
  group => 'root',
  mode  => '0644',
}

include baseconfig,mercurial,java
