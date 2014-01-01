env "NODIST_HOME" do
  value "#{ENV['SYSTEMDRIVE']}\\nodist"
  action :create
end

windows_path '%NODIST_HOME%\\bin' do
  action :add
end
