powershell "install visual studio 2013"  do
  code <<-EOH
    c:
    cd "\\"
    f:\\vs_professional.exe /adminfile f:\\AdminDeployment.xml /passive /norestart /log c:\\vs2013.log
  EOH
end
