batch "install vs2013u"  do
  code <<-EOH
    c:
    cd "#{ENV['SYSTEMDRIVE']}\\"
    cmd /c "c:\\temp\\install-vs2013"
  EOH
end


