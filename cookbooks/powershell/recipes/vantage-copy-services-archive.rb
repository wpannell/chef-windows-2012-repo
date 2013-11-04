cookbook_file "#{node['windows']['temproot']}/services.zip"  do
  source "services.zip"	
end
