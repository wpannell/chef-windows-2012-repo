include_recipe "webpi"
include_recipe "windows"

unless node['iis']['accept_eula'] then
  Chef::Application.fatal!("You must accept the EULA by setting the attribute node['iis']['accept_eula'] before installing IIS.")
end

iis_app "surepath" do
  app_name "vantage3"
  path "/cytology/surepath"
  application_pool "vantage-javascript-client"
  physical_path "#{node['iis']['surepathroot']}"
  action [:add]
end

