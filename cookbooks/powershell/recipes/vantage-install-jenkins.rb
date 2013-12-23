batch "expand jenkins archive"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\jenkins-1.544.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

windows_package "jenkins v 1.544"  do
  source "#{ENV['SYSTEMDRIVE']}\\jenkins-1.544.msi"
  installer_type :msi
  action :install
end
