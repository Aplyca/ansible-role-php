Vagrant.configure(2) do |config|
  config.vm.define "php.vagrant", primary: true, autostart: true do |config_machine|
      config.vm.synced_folder ".", "/vagrant", disabled: true
      #Assigning a provider
      config_machine.vm.provider :virtualbox do |virtualbox, override|
        virtualbox.name = "Vagrant PHP"
          virtualbox.cpus = 8
          virtualbox.memory = 2048
		  override.vm.box = "ubuntu/trusty64"
      end

      # Asinging a provisioner
      config_machine.vm.provision :ansible, run: "always" do |provisioner|
          provisioner.playbook = "playbooks.yml"
          provisioner.extra_vars = "tests/test.yml" if File.file?("tests/test.yml")
          #provisioner.tags = "vars"
          #provisioner.verbose = true
      end
  end
end
