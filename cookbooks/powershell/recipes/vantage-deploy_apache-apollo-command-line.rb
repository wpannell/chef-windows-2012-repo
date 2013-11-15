batch "deploy apollo command line"  do
  code <<-EOH
    c:
    cd "#{node['windows']['7ziproot']}
    7z x "#{node['windows']['temproot']}\\apache-apollo-command-line.zip" -o"c:\\"
  EOH
end
