batch "Which platform?" do
  code <<-EOH
@ECHO OFF

ECHO The platform = %OS% >> %SystemDrive%\plaform.txt

  EOH
end