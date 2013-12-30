batch "install nodedist"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\marcelklehr-nodist-v0.4.2-0-gce884a0.zip -o#{ENV['SYSTEMDRIVE']}\\nodedist
  EOH
end

windows_path "#{ENV['SYSTEMDRIVE']}\\nodedist\\bin" do
  action :add
end

batch "install node v0.11.8"  do
  code <<-EOH
    nodist + v0.11.8
  EOH
end



