cookbook_file "#{node['windows']['temproot']}\\node-command-line.zip"  do
  source "node-command-line.zip"
end
