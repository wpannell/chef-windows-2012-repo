batch "install apollo service"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\"
    cmd /c "c:\\apollo-install-service"
  EOH
end


