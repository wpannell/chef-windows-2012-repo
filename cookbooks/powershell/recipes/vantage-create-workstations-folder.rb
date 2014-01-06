batch "create workstations folder for vantage 3" do
  code <<-EOH
    md "#{node['iis']['workstationsroot']}"
  EOH
end