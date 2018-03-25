Vagrant::Config.run do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.network :bridged
  config.vm.customize ["modifyvm", :id, "--memory", 4096]
  config.vm.customize ["modifyvm", :id, "--usb", "on"] # for adb
  config.vm.customize ["modifyvm", :id, "--usbehci", "on"]
  config.vm.share_folder "v-root", "/home/vagrant/shared", ".", :nfs => false
  config.vm.provision :shell, :path => "setup.sh"
  #config.vm.linked_clone => true
end

