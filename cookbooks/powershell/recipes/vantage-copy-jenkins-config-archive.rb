cookbook_file "#{node['windows']['temproot']}\\jenkins.config.exe"  do
  source "jenkins.config.zip"
end
