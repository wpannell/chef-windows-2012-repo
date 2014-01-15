include_recipe "webpi"
include_recipe "windows"

unless node['iis']['accept_eula'] then
  Chef::Application.fatal!("You must accept the EULA by setting the attribute node['iis']['accept_eula'] before installing IIS.")
end

iis_app "externalservices" do
  app_name "vantage3"
  path "/externalservices"
  application_pool "vantage-external-services-sql-lite"
  physical_path "#{node['iis']['externalservicesroot']}"
  action [:add]
end

