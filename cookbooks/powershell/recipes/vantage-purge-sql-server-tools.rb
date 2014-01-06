windows_reboot 60 do
  action :cancel
end

windows_auto_run 'SQL-SERVER-TOOLS' do
  program "C:\\temp\\install-sql-server.bat.bat"
  only_if { Registry.value_exists?(AUTO_RUN_KEY, 'SQL-SERVER-TOOLS') }
  action :remove
end
