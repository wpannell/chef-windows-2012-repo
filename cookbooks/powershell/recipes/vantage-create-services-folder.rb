powershell "create services folder for vantage 3" do
  code <<-EOH
    md "#{node['iis']['vantageroot3']}/services"
  EOH
end