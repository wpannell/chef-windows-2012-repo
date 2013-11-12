batch "install jdk"  do
  code <<-EOH
    c:
    cd "#{node['windows']['temproot']}"
    cmd /c jdk-6u18-windows-x64.exe /s
  EOH
end

env "JAVA_HOME" do
  value "C:\\Program Files\\Java\\jre6"
end
