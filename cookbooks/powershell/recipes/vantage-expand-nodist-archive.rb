batch "expand nodist"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\nodist.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

windows_path "#{ENV['SYSTEMDRIVE']}\\nodist\\bin" do
  action :add
end

