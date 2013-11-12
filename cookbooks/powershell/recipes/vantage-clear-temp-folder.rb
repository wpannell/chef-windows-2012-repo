powershell "clear temp folder" do
  code <<-EOH
    Get-ChildItem -Path "#{node['windows']['temproot']}" -Recurse | Remove-Item -force -recurse
  EOH
end