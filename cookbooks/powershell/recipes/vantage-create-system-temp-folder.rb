powershell "create windows temp folder" do
  code <<-EOH
    md "#{node['windows']['temproot']}"
  EOH
end

