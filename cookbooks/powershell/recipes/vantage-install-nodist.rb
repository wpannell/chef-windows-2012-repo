batch "install nodist"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\marcelklehr-nodist-v0.4.2-0-gce884a0.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

windows_path "#{ENV['SYSTEMDRIVE']}\\marcelklehr-nodist-ce884a0\\bin" do
  action :add
end



