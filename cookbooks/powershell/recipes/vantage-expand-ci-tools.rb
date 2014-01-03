batch "expand ci-tools"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\ci-tools.zip -o#{node['windows']['temproot']}
    move #{node['windows']['temproot']}\\install-vs2013-tools.bat "C:\\Users\\Administrator\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup"
  EOH
end

batch "install node" do
  code <<-EOH
    set PATH = "C:\\nodist\\bin;%PATH%"
    c:\\temp\\install-node-tools
  EOH
  notifies :request, 'windows_reboot[60]'
end

windows_reboot 60 do
  reason 'CI-TOOLS installed on reboot'
  action :nothing
end
