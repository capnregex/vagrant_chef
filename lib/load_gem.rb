
librarian_name = 'librarian'
librarian_version = '0.0.23'
begin
  Gem::Specification.find_by_name(librarian_name, librarian_version)
rescue Gem::LoadError
  begin
    require 'vagrant/environment'
    env = Vagrant::Environment.new
    env.cli('gem', 'install', librarian_name, '--version', librarian_version)
  rescue SystemExit
  end
end


