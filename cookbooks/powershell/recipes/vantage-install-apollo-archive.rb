batch "expand apollo archive"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\apache-apollo-1.6-windows-distro.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

