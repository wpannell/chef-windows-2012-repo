batch "create apollo service"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\"
    cmd /c "c:\\apollo-create"
  EOH
end
