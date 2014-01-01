windows_path "#{ENV['SYSTEMDRIVE']}\\opscode\\chef\\embedded\\bin" do
  action :add
end

batch "install winrm"  do
  code <<-EOH
    gem install winrm
  EOH
end
