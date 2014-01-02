batch "install node"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\"
    cmd /c "c:\\temp\\install-node"
  EOH
end


