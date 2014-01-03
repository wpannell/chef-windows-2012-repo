batch "expand jenkins config archive"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\jenkins.config.zip -o"#{ENV['SYSTEMDRIVE']}\\Program Files (x86)\\Jenkins" -aos
    cd "c:\\temp"
    #{node['windows']['7ziproot']}\\7z x plugins.zip.001 -o"#{ENV['SYSTEMDRIVE']}\\Program Files (x86)\\Jenkins" -aos
  EOH
end
