windows_reboot 60 do
  reason 'CI-TOOLS installed on reboot'
  action :nothing
end

batch "expand CI-TOOLS"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\ci-tools.zip -o#{node['windows']['temproot']}
  EOH
end

windows_auto_run 'CI-TOOLS' do
  program "C:\\temp\\install-node-tools.bat"
  not_if { Registry.value_exists?(AUTO_RUN_KEY, 'CI-TOOLS') }
  action :create
  notifies :request, 'windows_reboot[60]'
end

batch "reboot" do
  code <<-EOH
    shutdown -r
  EOH
end
