batch "install apollo service"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\"
    cmd /c "c:\\temp\\install-nodist"
  EOH
end


