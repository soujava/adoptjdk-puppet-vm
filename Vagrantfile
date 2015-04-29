# OpenJDK 8 Vagrant Build
#
# Single debian8 box openjdk8, mercurial and openjdk8 clone setup installed via Puppet.
#

box      = 'debian8'
url      = 'http://static.gender-api.com/debian-8-jessie-rc2-x64-slim.box'
hostname = 'debian8'
domain   = 'openjdk.org'
ip       = '192.168.0.42'
ram      = '1056'

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
    puppet module install jgoettsch-mercurial
    puppet module install puppetlabs-java
    puppet module install dsestero-download_uncompress
    apt-get install sudo
    rm -rf jdk8
  }
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet/manifests'
    puppet.manifest_file = 'site.pp'
    puppet.module_path = 'puppet/modules'
  end
end
