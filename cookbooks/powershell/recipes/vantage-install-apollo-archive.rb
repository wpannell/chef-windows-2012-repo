batch "install apollo service"  do
  code <<-EOH
    c:
    cd "#{node['windows']['7ziproot']}
    7z x "#{node['windows']['temproot']}\\apache-apollo-1.6-windows-distro.zip" -o"#{ENV['SYSTEMDRIVE']}"
    cd \\apache-apollo-1.6\\bin
    apollo.cmd
    create ApolloService
    ApolloService\\bin\\install
    ApolloService\\bin\\start
    exit
  EOH
end
