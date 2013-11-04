cookbook_file "#{node['windows']['temproot']}\\web.zip"  do
  source "web.zip"	
end
