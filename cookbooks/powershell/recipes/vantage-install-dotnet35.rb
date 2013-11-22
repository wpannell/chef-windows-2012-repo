powershell "install dotnet35" do
  code <<-EOH
    Install-WindowsFeature NET-Framework-Core
  EOH
end