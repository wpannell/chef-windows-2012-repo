batch "deploy dotnet35 archive"  do
  code <<-EOH
    c:
    cd "#{node['windows']['7ziproot']}
    7z x "#{node['windows']['temproot']}\\netfx3.zip" -o"#{node['windows']['temproot']}"
  EOH
end
