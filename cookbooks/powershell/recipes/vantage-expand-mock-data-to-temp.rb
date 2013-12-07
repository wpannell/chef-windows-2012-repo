batch "expand mock data to temporary folder"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\vantage3.db.zip
  EOH
end

