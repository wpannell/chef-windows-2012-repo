batch "expand jenkins config archive"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\jenkins.config.zip -o"#{ENV['SYSTEMDRIVE']}\\Program Files (x86)\\Jenkins"
    7z x #{node['windows']['temproot']}\\plugins1.zip -o"#{ENV['SYSTEMDRIVE']}\\Program Files (x86)\\Jenkins\\plugins"
    7z x #{node['windows']['temproot']}\\plugins2.zip -o"#{ENV['SYSTEMDRIVE']}\\Program Files (x86)\\Jenkins\\plugins"
  EOH
end
