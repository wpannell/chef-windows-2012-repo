powershell "create windows temp folder" do
  code <<-EOH
    md "#{node['windows']['temproot']}"
  EOH
end

cookbook_file "#{node['windows']['temproot']}/web.zip"  do
  source "web.zip"	
end
