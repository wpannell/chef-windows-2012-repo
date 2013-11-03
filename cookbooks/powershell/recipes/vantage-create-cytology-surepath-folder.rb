powershell "create surepath folder for vantage 3" do
  code <<-EOH
    md "#{node['iis']['vantageroot3']}/cytology/surepath"
  EOH
end