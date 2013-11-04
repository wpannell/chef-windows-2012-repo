batch "deploy services archive"  do
  code <<-EOH
    7z x "#{node['windows']['temproot']}\\services.zip" -o"#{node['iis']['servicesroot']}
  EOH
end
