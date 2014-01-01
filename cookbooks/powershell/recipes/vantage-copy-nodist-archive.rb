cookbook_file "#{node['windows']['temproot']}\\nodist.zip"  do
  source "nodist.zip"
end
