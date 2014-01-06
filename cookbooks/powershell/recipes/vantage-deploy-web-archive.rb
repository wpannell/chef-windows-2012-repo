batch "deploy web archive"  do
  code <<-EOH
    c:
    cd "#{node['windows']['7ziproot']}
    7z x "#{node['windows']['temproot']}\\web.zip" -o"#{node['iis']['workstationsroot']}"
  EOH
end
