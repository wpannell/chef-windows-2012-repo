windows_reboot 60 do
  action :cancel
end

windows_auto_run 'CI-TOOLS' do
  program "C:\\temp\\install-node-tools.bat"
  only_if { Registry.value_exists?(AUTO_RUN_KEY, 'CI-TOOLS') }
  remove :create
end
