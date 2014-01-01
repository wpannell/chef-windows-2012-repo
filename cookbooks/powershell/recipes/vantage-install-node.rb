batch "install node v0.11.8"  do
  code <<-EOH
    cd "#{ENV['SYSTEMDRIVE']}\\marcelklehr-nodist-ce884a0\\bin"
    nodist + v0.11.8
  EOH
end



