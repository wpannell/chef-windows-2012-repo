cookbook_file "#{node['windows']['temproot']}\\chef-client-11.8.0-1.windows.msi"  do
  source "chef-client-11.8.0-1.windows.msi"
end
