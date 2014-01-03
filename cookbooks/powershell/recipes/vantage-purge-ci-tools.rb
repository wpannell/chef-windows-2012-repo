batch "purge ci-tools"  do
  code <<-EOH
    del "C:\\Users\\Administrator\\AppData\\Roaming\\Microsoft\\Windows\\Start Menu\\Programs\\Startup\\*.bat"
  EOH
end

windows_reboot 60 do
  action :cancel
end
