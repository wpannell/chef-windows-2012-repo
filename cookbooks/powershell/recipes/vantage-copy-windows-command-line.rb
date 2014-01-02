cookbook_file "#{node['windows']['temproot']}\\windows-command-line.zip"  do
  source "windows-command-line.zip"
end
