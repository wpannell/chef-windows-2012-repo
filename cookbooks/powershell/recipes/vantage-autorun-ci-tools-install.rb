windows_auto_run "CI-TOOLS" do
  program "C:/temp/install-ci-tools.bat"
  not_if { Registry.value_exists?(AUTO_RUN_KEY, 'CI-TOOLS') }
  action :create
  notifies :request, 'windows_reboot[1]'
end

windows_reboot 1 do
  reason 'CI-TOOLS installed on reboot'
  action :nothing
end
