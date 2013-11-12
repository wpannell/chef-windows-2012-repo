powershell "enable windows updates" do
  code <<-EOH
    cd "C:\\Program Files\\Update Services\\Tools"
    .\\wsusutil.exe postinstall content_dir=c:\\wsus sql_instance_name=WIN-BB35B0L7O9S
  EOH
end