cookbook_file "#{node['windows']['temproot']}\\jenkins-1.544.zip"  do
  source "jenkins-1.544.zip"
end
