batch "install node v0.11.8"  do
  code <<-EOH
    cd "#{ENV['SYSTEMDRIVE']}\\nodist\\bin"
    nodist + v0.11.8
  EOH
end
