cookbook_file "#{node['windows']['temproot']}\\jenkins.config.zip"  do
  source "jenkins.config.zip"
end
