batch "expand windows command line scripts to temporary folder"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\windows-command-line.zip -o"#{node['windows']['temproot']}"
  EOH
end

