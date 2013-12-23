powershell "install visual studio 2013"  do
  code <<-EOH
    f:
    cd "\\"
    .\\vs_professional.exe /adminfile .//AdminDeployment.xml /passive /norestart /log c:\\vs2013.log
  EOH
end
