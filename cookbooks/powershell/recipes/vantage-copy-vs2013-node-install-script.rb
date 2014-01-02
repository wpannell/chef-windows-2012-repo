cookbook_file "#{node['windows']['temproot']}\\install-ci-tools.bat"  do
  source "install-ci-tools.bat"
end

