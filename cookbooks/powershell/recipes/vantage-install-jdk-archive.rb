batch "install jdk"  do
  code <<-EOH
    c:
    cd "#{node['windows']['temproot']}"
    cmd /c jdk-6u18-windows-x64.exe /s
  EOH
end

env "JAVA_HOME" do
  value "C:\\Program Files\\Java\\jdk1.6.0_18"
end

windows_path "C:\\Program Files\\Java\\jdk1.6.0_18\\bin" do
  action :add
end
