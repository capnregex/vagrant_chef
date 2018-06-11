
def require_plugin(name)
  unless Vagrant.has_plugin?(name)
    puts "installing plugin #{name}"
    %x(vagrant plugin install #{name})
    if $?.success?
      puts "Installed #{name} !"
      exec 'vagrant', *ARGV
    end
  end
end

