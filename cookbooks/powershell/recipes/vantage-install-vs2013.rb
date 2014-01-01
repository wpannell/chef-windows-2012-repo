powershell "install visual studio 2013"  do
  code <<-EOH
    c:
    cd "\\"
    f:\\vs_professional.exe /Adminfile c:\\temp\\AdminDeployment.xml /passive /quiet /norestart /log c:\\vs2013.log
  EOH
end
