batch "install nodist"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\nodist\\bin"
    nodist update
  EOH
end

batch "install node"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\nodist\\bin"
    nodist + v0.11.8
  EOH
end
