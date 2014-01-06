include_recipe "webpi"
include_recipe "windows"

unless node['iis']['accept_eula'] then
  Chef::Application.fatal!("You must accept the EULA by setting the attribute node['iis']['accept_eula'] before installing IIS.")
end

iis_app "workstations" do
  app_name "vantage3"
  path "/workstations"
  application_pool "vantage-javascript-client"
  physical_path "#{node['iis']['workstationsroot']}"
  action [:add]
end

