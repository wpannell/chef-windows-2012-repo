batch "deploy web archive"  do
  code <<-EOH
    7z x "#{node['windows']['temproot']}\\web.zip" -o"#{node['iis']['cytologyroot']}
  EOH
end
