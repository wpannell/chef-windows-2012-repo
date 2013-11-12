#
# Author:: Seth Chisamore (<schisamo@opscode.com>)
# Cookbook Name:: iis
# Recipe:: default
#
# Copyright 2011, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "webpi"

unless node['iis']['accept_eula'] then
  Chef::Application.fatal!("You must accept the EULA by setting the attribute node['iis']['accept_eula'] before installing IIS.")
end

webpi_product node['iis']['components'] do
  accept_eula node['iis']['accept_eula']
  action :install
  notifies :run, "execute[Register ASP.NET v4]", :immediately
  notifies :run, "execute[Register ASP.NET v4 (x64)]", :immediately
end

aspnet_regiis = "#{ENV['WinDir']}\\Microsoft.NET\\Framework\\v4.0.30319\\aspnet_regiis.exe"
execute 'Register ASP.NET v4' do
  command "#{aspnet_regiis} -i"
  only_if { File.exists?(aspnet_regiis) }
  action :nothing
end

aspnet_regiis64 = "#{ENV['WinDir']}\\Microsoft.NET\\Framework64\\v4.0.30319\\aspnet_regiis.exe"
execute 'Register ASP.NET v4 (x64)' do
  command "#{aspnet_regiis64} -i"
  only_if { File.exists?(aspnet_regiis64) }
  action :nothing
end

windows_feature "IIS-WebServerRole" do
  action :install
end

windows_feature "IIS-WebServer" do
  action :install
end

windows_feature "IIS-CommonHttpFeatures" do
  action :install
end

windows_feature "IIS-StaticContent" do
  action :install
end

windows_feature "IIS-DefaultDocument" do
  action :install
end

windows_feature "IIS-DirectoryBrowsing" do
  action :install
end

windows_feature "IIS-HttpErrors" do
  action :install
end

windows_feature "IIS-HttpRedirect" do
  action :install
end

windows_feature "IIS-ApplicationDevelopment" do
  action :install
end

windows_feature "IIS-ASPNET45" do
  action :install_with_parents
end

windows_feature "IIS-NetFxExtensibility45" do
  action :install
end

windows_feature "IIS-ISAPIExtensions" do
  action :install
end

windows_feature "IIS-ISAPIFilter" do
  action :install
end

windows_feature "IIS-HealthAndDiagnostics" do
  action :install
end

windows_feature "IIS-HttpLogging" do
  action :install
end

windows_feature "IIS-LoggingLibraries" do
  action :install
end

windows_feature "IIS-RequestMonitor" do
  action :install
end

windows_feature "IIS-HttpTracing" do
  action :install
end

windows_feature "IIS-CustomLogging" do
  action :install
end

windows_feature "IIS-ODBCLogging" do
  action :install
end

windows_feature "IIS-Security" do
  action :install
end

windows_feature "IIS-BasicAuthentication" do
  action :install
end

windows_feature "IIS-WindowsAuthentication" do
  action :install
end

windows_feature "IIS-DigestAuthentication" do
  action :install
end

windows_feature "IIS-ClientCertificateMappingAuthentication" do
  action :install
end

windows_feature "IIS-IISCertificateMappingAuthentication" do
  action :install
end

windows_feature "IIS-URLAuthorization" do
  action :install
end

windows_feature "IIS-RequestFiltering" do
  action :install
end

windows_feature "IIS-IPSecurity" do
  action :install
end

windows_feature "IIS-Performance" do
  action :install
end

windows_feature "IIS-HttpCompressionStatic" do
  action :install
end

windows_feature "IIS-HttpCompressionDynamic" do
  action :install
end

windows_feature "IIS-WMICompatibility" do
  action :install
end

windows_feature "IIS-WebServerManagementTools" do
  action :install
end

windows_feature "NetFx4Extended-ASPNET45" do
  action :install_with_parents
end

windows_feature "IIS-ApplicationInit" do
  action :install
end

windows_feature "IIS-WebSockets" do
  action :install
end

windows_feature "IIS-CertProvider" do
  action :install
end

service "iis" do
  service_name "W3SVC"
  action :nothing
end