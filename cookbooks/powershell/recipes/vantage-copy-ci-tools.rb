cookbook_file "#{node['windows']['temproot']}\\ci-tools.zip"  do
  source "ci-tools.zip"
end

