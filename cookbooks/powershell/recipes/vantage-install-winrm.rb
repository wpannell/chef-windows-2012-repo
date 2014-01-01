batch "install winrm"  do
  code <<-EOH
    cd "#{ENV['SYSTEMDRIVE']}\\opscode\\chef\\embedded\\bin"
    gem install winrm
  EOH
end
