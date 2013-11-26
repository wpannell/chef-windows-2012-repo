powershell "clear web folder" do
  code <<-EOH
    Get-ChildItem -Path "#{node['iis']['surepathroot']}" -Recurse | Remove-Item -force -recurse
  EOH
end
