batch "install node"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\nodist.zip -o#{ENV['SYSTEMDRIVE']}
    setx /M PATH "#{ENV['SYSTEMDRIVE']}\\nodist\\bin;%PATH%"
    nodist update
    nodist + v0.11.8
  EOH
end
