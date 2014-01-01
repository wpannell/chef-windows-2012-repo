cookbook_file "#{node['windows']['temproot']}\\AdminDeployment.xml"  do
  source "AdminDeployment.xml"
end
