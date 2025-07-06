Vagrant.configure("2") do |config|
  # Base box
  config.vm.box = "ubuntu/jammy64"

  # DevOps Node
  config.vm.define "devops" do |devops|
    devops.vm.hostname = "devops"
    devops.vm.network "private_network", ip: "192.168.56.20"
    devops.vm.provision "shell", path: "setup_nginx.sh" #Auto-run the script
    devops.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 2
    end
  end
end