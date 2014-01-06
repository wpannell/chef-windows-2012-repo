batch "create services folder for vantage 3" do
  code <<-EOH
    md "#{node['iis']['servicesroot']}"
  EOH
end