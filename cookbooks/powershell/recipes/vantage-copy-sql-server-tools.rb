cookbook_file "#{node['windows']['temproot']}\\sql-server-tools.zip"  do
  source "sql-server-tools.zip"
end


