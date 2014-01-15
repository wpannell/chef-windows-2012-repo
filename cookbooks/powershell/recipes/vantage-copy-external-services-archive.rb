cookbook_file "#{node['windows']['temproot']}\\externalservices.zip"  do
  source "externalservices.zip"
end
