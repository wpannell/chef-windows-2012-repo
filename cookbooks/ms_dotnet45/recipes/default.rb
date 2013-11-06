#
# Cookbook Name:: ms_dotnet45
# Recipe:: default
#
# Copyright 2012, Webtrends Inc.
#
# All rights reserved
#
# Code based off the PowerShell cookbook by Seth Chisamore

if platform?("windows")
  if (win_version.windows_server_2008? || win_version.windows_server_2008_r2? || win_version.windows_7? || win_version.windows_vista?)
    if !File.exists?("C:/Windows/Microsoft.NET/Framework/v4.0.30319/_Networkingperfcounters_v2.ini")
      windows_package "Microsoft .NET Framework 4.5 RC" do
        source node['ms_dotnet45']['http_url']
        installer_type :custom
        options "/quiet /norestart"
        action :install
       end
	 end
  elsif (win_version.windows_server_2003_r2? || win_version.windows_server_2003? || win_version.windows_xp?)
    Chef::Log.warn('The .NET 4.5 Chef recipe currently only supports Windows Vista, 7, 2008, and 2008 R2.')
  end
else
  Chef::Log.warn('Microsoft .NET Framework 4.5 can only be installed on the Windows platform.')
end
