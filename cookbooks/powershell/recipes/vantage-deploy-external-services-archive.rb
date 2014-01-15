batch "deploy services archive"  do
  code <<-EOH
    c:
    cd "#{node['windows']['7ziproot']}
    7z x "#{node['windows']['temproot']}\\externalservices.zip" -o"#{node['iis']['externalservicesroot']}"
  EOH
end
