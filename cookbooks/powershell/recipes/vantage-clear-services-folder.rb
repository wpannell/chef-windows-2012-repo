powershell "clear service folder" do
  code <<-EOH
    Get-ChildItem -Path "#{node['iis']['servicesroot']}" -Recurse | Remove-Item -force -recurse
  EOH
end
