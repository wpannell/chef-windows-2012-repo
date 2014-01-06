batch "create system temp folder" do
  code <<-EOH
    md "#{node['windows']['temproot']}"
  EOH
end

