env "JAVA_HOME" do
  value "C:\\Program Files\\Java\\jdk1.6.0_18"
  action :create
end

batch "expand gradle archive"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\gradle-1.10-bin.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

env "GRADLE_HOME" do
  value "{ENV['SYSTEMDRIVE']}\\gradle-1.10"
  action :create
end

windows_path '%JAVA_HOME%\\bin' do
  action :add
end

windows_path '%GRADLE_HOME%\\bin' do
  action :add
end
