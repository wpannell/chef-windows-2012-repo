batch "expand nodist archive"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\nodist.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

env "NODIST_HOME" do
  value "#{ENV['SYSTEMDRIVE']}\\nodist"
  action :create
end

windows_path '%NODIST_HOME%\\bin' do
  action :add
end
