include_recipe "webpi"
include_recipe "windows"

unless node['iis']['accept_eula'] then
  Chef::Application.fatal!("You must accept the EULA by setting the attribute node['iis']['accept_eula'] before installing IIS.")
end

iis_pool "vantage-services-sql-lite" do
  runtime_version "v4.0"
  pipeline_mode :Integrated
  thirty_two_bit :true
  action :add
end

