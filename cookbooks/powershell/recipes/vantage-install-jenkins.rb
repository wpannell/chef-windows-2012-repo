batch "expand jenkins archive"  do
  code <<-EOH
    c:
    cd "#{node['windows']['temproot']}"
    7z x #{node['windows']['temproot']}\\jenkins-1.544.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

batch "install jenkins"  do
  code <<-EOH
    c:
    cd "#{node['windows']['temproot']}"
    cmd /c msiexec /i jenkins-1.544.msi /quite /qn /norestart
  EOH
end
