batch "expand unxutils archive"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\unxutils.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

windows_path "#{ENV['SYSTEMDRIVE']}\\bin" do
  action :add
end
