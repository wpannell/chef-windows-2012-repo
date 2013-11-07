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
include_recipe "windows"

unless node['iis']['accept_eula'] then
  Chef::Application.fatal!("You must accept the EULA by setting the attribute node['iis']['accept_eula'] before installing IIS.")
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

windows_feature "IIS-ASP" do
  action :install
end

windows_feature "IIS-ASPNET" do
  action :install
end

windows_feature "IIS-NetFxExtensibility" do
  action :install
end

windows_feature "IIS-ASPNET45" do
  action :install
end

windows_feature "IIS-NetFxExtensibility45" do
  action :install
end

windows_feature "NetFx4Extended-ASPNET45" do
  action :install
end

windows_feature "CGI" do
  action :install
end

windows_feature "ISAPIExtensions" do
  action :install
end

windows_feature "ISAPIFilter" do
  action :install
end

windows_feature "ServerSideIncludes" do
  action :install
end

windows_feature "HealthAndDiagnostics" do
  action :install
end

windows_feature "HttpLogging" do
  action :install
end

windows_feature "LoggingLibraries" do
  action :install
end

windows_feature "RequestMonitor" do
  action :install
end

windows_feature "HttpTracing" do
  action :install
end

windows_feature "CustomLogging" do
  action :install
end

windows_feature "ODBCLogging" do
  action :install
end

windows_feature "Security" do
  action :install
end

windows_feature "BasicAuthentication" do
  action :install
end

windows_feature "WindowsAuthentication" do
  action :install
end

windows_feature "DigestAuthentication" do
  action :install
end

windows_feature "ClientCertificateMappingAuthentication" do
  action :install
end

windows_feature "IISCertificateMappingAuthentication" do
  action :install
end

windows_feature "URLAuthorization" do
  action :install
end

windows_feature "RequestFiltering" do
  action :install
end

windows_feature "IPSecurity" do
  action :install
end

windows_feature "Performance" do
  action :install
end

windows_feature "HttpCompressionStatic" do
  action :install
end

windows_feature "HttpCompressionDynamic" do
  action :install
end

windows_feature "WebDAV" do
  action :install
end

windows_feature "WebServerManagementTools" do
  action :install
end

windows_feature "ManagementScriptingTools" do
  action :install
end

windows_feature "IIS6ManagementCompatibility" do
  action :install
end

windows_feature "Metabase" do
  action :install
end

windows_feature "WMICompatibility" do
  action :install
end

windows_feature "LegacyScripts" do
  action :install
end

windows_feature "FTPServer" do
  action :install
end

windows_feature "FTPSvc" do
  action :install
end

windows_feature "FTPExtensibility" do
  action :install
end

windows_feature "ApplicationInit" do
  action :install
end

windows_feature "WebSockets" do
  action :install
end

windows_feature "CertProvider" do
  action :install
end

windows_feature "ManagementConsole" do
  action :install
end

windows_feature "LegacySnapIn" do
  action :install
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

service "iis" do
  service_name "W3SVC"
  action :nothing
end


