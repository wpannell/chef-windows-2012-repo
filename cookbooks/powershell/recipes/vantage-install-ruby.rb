env "RUBY_HOME" do
  value "#{ENV['SYSTEMDRIVE']}\\opscode\\chef\\embedded"
  action :create
end

windows_path '%RUBY_HOME%\\bin' do
  action :add
end
