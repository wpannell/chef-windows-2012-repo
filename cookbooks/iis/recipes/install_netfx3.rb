include_recipe "webpi"

unless node['iis']['accept_eula'] then
  Chef::Application.fatal!("You must accept the EULA by setting the attribute node['iis']['accept_eula'] before installing IIS.")
end

windows_feature "NetFx3ServerFeatures" do
  action :install
end
