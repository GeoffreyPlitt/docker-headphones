Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.provision "docker",
    images: ["ubuntu"]

  config.vm.network :forwarded_port, host: 8181, guest: 8181
  config.vm.provision "shell",
    inline: "cd /vagrant && docker build -t mine . && docker run -d -p 8181:8181 mine"
end
