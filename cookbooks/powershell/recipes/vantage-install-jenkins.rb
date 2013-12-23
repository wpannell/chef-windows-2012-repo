batch "expand jenkins archive"  do
  code <<-EOH
    c:
    cd "#{node['windows']['temproot']}"
    7z x #{node['windows']['temproot']}\\jenkins-1.544.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

powershell "install jenkins"  do
  code <<-EOH
    c:
    cd "\\"
    msiexec /i jenkins-1.544.msi /quite /qn /norestart
  EOH
end
