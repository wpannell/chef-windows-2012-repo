powershell "install visual studio 2013"  do
  code <<-EOH
    c:
    cd "\\"
    e:\\vs_ultimate.exe /AdminFile c:\\temp\\AdminDeployment.xml /passive /quiet /norestart /Log c:\\vs2013.log
  EOH
end
