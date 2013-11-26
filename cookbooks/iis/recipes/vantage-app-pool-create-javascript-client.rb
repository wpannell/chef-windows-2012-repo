include_recipe "webpi"
include_recipe "windows"

unless node['iis']['accept_eula'] then
  Chef::Application.fatal!("You must accept the EULA by setting the attribute node['iis']['accept_eula'] before installing IIS.")
end

iis_pool "vantage-javascript-client" do
  runtime_version ""
  pipeline_mode :Integrated
  action :add
end

