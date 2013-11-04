include_recipe "webpi"
include_recipe "windows"

unless node['iis']['accept_eula'] then
  Chef::Application.fatal!("You must accept the EULA by setting the attribute node['iis']['accept_eula'] before installing IIS.")
end

iis_app "services" do
  app_name "vantage3"
  path "/cytology/services"
  application_pool "vantage-services-sql-lite"
  physical_path "#{node['iis']['servicesroot']}"
  action [:add]
end

