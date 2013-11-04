batch "deploy services archive"  do
  code <<-EOH
    c:
    cd "#{node['windows']['7ziproot']}
    7z x "#{node['windows']['temproot']}\\services.zip" -o"#{node['iis']['servicesroot']}
  EOH
end
