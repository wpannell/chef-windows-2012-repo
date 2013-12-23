powershell "install visual studio 2013"  do
  code <<-EOH
    f:
    cd "\\"
    f:\\vs_professional.exe /adminfile AdminDeployment.xml /passive /norestart
  EOH
end
