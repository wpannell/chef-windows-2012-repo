batch "extract node"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\nodist.zip -o#{ENV['SYSTEMDRIVE']}
  EOH
end

windows_path "#{ENV['SYSTEMDRIVE']}\\nodist\\bin" do
  action :add
end

powershell "install nodist"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\nodist\\bin"
    nodist update
  EOH
end

powershell "install nodist"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\nodist\\bin"
    nodist + v0.11.8
  EOH
end
