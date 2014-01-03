batch "expand ci-tools"  do
  code <<-EOH
    c:
    cd #{node['windows']['7ziproot']}
    7z x #{node['windows']['temproot']}\\ci-tools.zip -o#{node['windows']['temproot']}
  EOH
end

batch "install node" do
  code <<-EOH
    set PATH = "C:\\nodist\\bin;%PATH%"
    c:\\temp\\install-node-tools
  EOH
end
