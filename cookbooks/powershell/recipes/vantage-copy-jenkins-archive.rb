cookbook_file "#{node['windows']['temproot']}\\jenkins-1.544.zip"  do
  source "jenkins-1.544.zip"
end

cookbook_file "#{node['windows']['temproot']}\\jenkins.config.zip"  do
  source "jenkins.config.zip"
end

cookbook_file "#{node['windows']['temproot']}\\plugins.zip.001"  do
  source "plugins.zip.001"
end

cookbook_file "#{node['windows']['temproot']}\\plugins.zip.002"  do
  source "plugins.zip.002"
end
