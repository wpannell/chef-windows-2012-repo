batch "start apollo service"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\"
    cmd /c "c:\\apollo-start-service"
  EOH
end

