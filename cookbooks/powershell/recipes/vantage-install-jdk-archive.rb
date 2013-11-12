batch "install jdk"  do
  code <<-EOH
  c:
  cd "#{node['windows']['temproot']}""
  cmd /c jdk-6u18-windows-x64.exe /s
  EOH
end
