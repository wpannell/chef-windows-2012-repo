batch "install nodist"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\marcelklehr-nodist-v0.4.2-0-gce884a0.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

env "NODIST_HOME" do
  value "#{ENV['SYSTEMDRIVE']}\\marcelklehr-nodist-ce884a0"
  action :create
end

windows_path '%NODIST_HOME%\\bin' do
  action :add
end
