windows_package "Chef Client v 11.8.0"  do
  source "#{node['windows']['temproot']}\\chef-client-11.8.0-1.windows.msi"
  installer_type :msi
  action :install
end

batch "install winrm"  do
  code <<-EOH
  gem install winrm
  EOH
end
