powershell "install apollo service"  do
  code <<-EOH
  #{ENV['SYSTEMDRIVE']}\\apollo-create.bat
  #{ENV['SYSTEMDRIVE']}\\apollo-install-service
  #{ENV['SYSTEMDRIVE']}\\apollo-start-service
  EOH
end

