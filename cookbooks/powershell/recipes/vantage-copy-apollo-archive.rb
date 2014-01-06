cookbook_file "#{node['windows']['temproot']}\\apache-apollo-1.6-windows-distro.zip"  do
  source "apache-apollo-1.6-windows-distro.zip"	
end

cookbook_file "#{node['windows']['temproot']}\\apache-apollo-command-line.zip"  do
  source "apache-apollo-command-line.zip"	
end
