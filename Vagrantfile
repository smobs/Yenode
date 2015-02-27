Vagrant.configure("2") do |config|

    # obvious TODO: add a nicer interface or error checking
    project = "Yenode"

    # our custom built VM
    config.vm.box = "chromaticleaves/nixos-14.04-x86_64"

    # creates a uniquely named virtualbox instance using the value of `project`
    config.vm.define project do |v|
        nil
    end

    # setup networking
    # config.vm.network "public_network"

    # port forwarding
    # config.vm.network "forwarded_port", guest: 8000, host: 8080

    # syncing project or other folders
    # config.vm.synced_folder "./myproject", "/myproject"

    # looks for a subfolder with the same name as the NIXOS_PROJECT env variable
    # in the examples/ folder and loads its configuration.nix file
    config_path = "configuration.nix"
    config.vm.provision :nixos, :path => config_path

    # allow ssh forwarding
    # config.ssh.forward_agent = true

end
