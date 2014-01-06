cookbook_file "#{node['windows']['temproot']}\\sql-server-config.ini"  do
  source "sql-server-config.ini"
end
