Vagrant.configure("2") do |config|
  config.vm.define "srv-web" do |web|
    web.vm.box = "ubuntu/jammy64"
    web.vm.box_check_update = false

    web.vm.network "forwarded_port", guest: 8080, host: 8085

    web.vm.network "private_network", ip: "192.168.33.11"
    web.vm.provider "virtualbox" do |vb|
      vb.name = "web-server"
      vb.gui = false
    
      vb.memory = "2048"
      vb.cpus = "2"
    end
  end
end
