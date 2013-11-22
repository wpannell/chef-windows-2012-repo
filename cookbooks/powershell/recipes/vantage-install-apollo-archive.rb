env "JAVA_HOME" do
  value "C:\\Program Files\\Java\\jre6"
  action :create
end

batch "expand apollo archive"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\apache-apollo-1.6-windows-distro.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

powershell "install apollo service"  do
  code <<-EOH
    c:
    cd "c:\\"
    apollo-create.bat
    apollo-install-service.bat
    apollo-start-service.bat
  EOH
end

