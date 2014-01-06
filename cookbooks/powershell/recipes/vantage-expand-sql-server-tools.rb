windows_reboot 60 do
  reason 'SQL-SERVER-TOOLS installed on reboot'
  action :nothing
end

cookbook_file "#{node['windows']['temproot']}\\sql-server-tools.zip"  do
  source "sql-server-tools.zipgit "
end

batch "expand SQL-SERVER-TOOLS"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\sql-server-tools.zip -o#{node['windows']['temproot']}
  EOH
end

windows_auto_run 'SQL-SERVER-TOOLS' do
  program "C:\\temp\\install-sql-server.bat"
  not_if { Registry.value_exists?(AUTO_RUN_KEY, 'SQL-SERVER-TOOLS') }
  action :create
  notifies :request, 'windows_reboot[60]'
end
