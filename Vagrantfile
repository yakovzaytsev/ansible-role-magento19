Vagrant.configure("2") do |config|
  if Vagrant.has_plugin?("vagrant-vmware-fusion") || Vagrant.has_plugin?("vagrant-vmware-workstation")
    config.vm.box = "ysz/xenial64"
    config.vm.box_version = "16.04.3"
  else
    config.vm.box = "ubuntu/xenial64"
  end
  config.vm.provider "vmware_fusion" do |v|
    # Display the VMware GUI when booting the machine
    # v.gui = true
    v.vmx["memsize"] = "1024"
  end
  config.vm.provider "vmware_workstation" do |v|
    # Display the VMware GUI when booting the machine
    # v.gui = true
    v.vmx["memsize"] = "1024"
  end
  config.vm.provision "ansible" do |ansible|
    ansible.extra_vars = { ansible_python_interpreter: "/usr/bin/python3" }
    ansible.become = true
    # ansible.verbose = "extra"
    ansible.playbook = "vagrant.yml"
    # ansible.start_at_task = "here"
    ansible.groups = {
      "magento" => ["default"]
    }
  end
  config.vm.network "forwarded_port", guest: 80, host: 80
  config.vm.network "forwarded_port", guest: 8080, host: 8080
end
