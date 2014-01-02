cookbook_file "#{node['windows']['temproot']}\\install-vs2013-node-at-startup.bat"  do
  source "install-vs2013-node-at-startup.bat"
end
