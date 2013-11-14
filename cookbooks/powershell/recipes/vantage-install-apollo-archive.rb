env "JAVA_HOME" do
  value "C:\\Program Files\\Java\\jre6"
  action :create
end

batch "expand apollo archive"  do
  code <<-EOH
    c:
    cd "#{node['windows']['7ziproot']}"
    7z x "#{node['windows']['temproot']}\\apache-apollo-1.6-windows-distro.zip" -o"#{ENV['SYSTEMDRIVE']}"
  EOH
end

batch "install apollo service"  do
  code <<-EOH
    c:
    cd "\\"
    \\apache-apollo-1.6\\bin\\apollo "create apollo-message-broker"
    \\apollo-message-broker\\bin\\apollo-broker-service "install"
    \\apollo-message-broker\\bin\\apollo-broker-service "start"
  EOH
end

