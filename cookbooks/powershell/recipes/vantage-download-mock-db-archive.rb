cookbook_file "#{node['windows']['temproot']}\\vantage3.db.zip"  do
  source "vantage3.db.zip"
end
