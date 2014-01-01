windows_path "#{ENV['SYSTEMDRIVE']}\\opscode\\chef\\embedded\\bin" do
  action :add
end

powershell "install winrm"  do
  code <<-EOH
    gem install winrm
  EOH
end
