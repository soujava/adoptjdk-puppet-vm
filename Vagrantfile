# OpenJDK 8 Vagrant Build
#
# Single Ubuntu 12 i386 box with mercurial and OpenJDK 8 cloned initial setup installed via Puppet.
#

box      = 'ubuntu-12-32b'
url      = 'https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-i386-vagrant-disk1.box'
hostname = 'ubuntu12'
domain   = 'openjdk.org'
ip       = '192.168.0.42'
ram      = '2048'

Vagrant::Config.run do |config|
  config.vm.box = box
  config.vm.box_url = url
  config.vm.host_name = hostname + '.' + domain
  config.vm.network :hostonly, ip

  config.vm.customize [
    'modifyvm', :id,
    '--name', hostname,
    '--memory', ram
  ]

  config.vm.provision :shell, :run => "always" do |shell|
  shell.inline = %{

    #install puppet
    echo -e "deb http://apt.puppetlabs.com/ lucid main\ndeb-src http://apt.puppetlabs.com/ lucid main" >> /etc/apt/sources.list.d/puppet.list
    apt-key adv --keyserver keyserver.ubuntu.com --recv 4BD6EC30
    apt-get update --fix-missing --force-yes -y
    apt-get install puppet --fix-missing --force-yes -y

    #install mercurial
    puppet module install jgoettsch-mercurial

    #install jdk7
    puppet module install puppetlabs-java
  }
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.manifest_file = 'site.pp'
    puppet.module_path = 'puppet/modules'
  end

end

Vagrant.configure("2") do |config|
  #download and build openjdk8
  #run get_source.sh make configure and make images
  config.vm.provision "shell", path: "after_provision.sh", privileged: false
end

