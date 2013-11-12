powershell "enable windows updates" do
  code <<-EOH
    Import-module ServerManager
    Add-WindowsFeature UpdateServices
  EOH
end