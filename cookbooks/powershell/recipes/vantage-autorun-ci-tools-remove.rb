windows_auto_run "CI-TOOLS" do
  program "C:/temp/install-ci-tools.bat"
  only_if { Registry.value_exists?(AUTO_RUN_KEY, 'CI-TOOLS') }
  action :remove
end

windows_reboot 1 do
  action :cancel
end
