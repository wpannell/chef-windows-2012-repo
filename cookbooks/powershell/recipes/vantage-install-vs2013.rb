batch "install visual studio 2013"  do
  code <<-EOH
    c:
    cd "\\"
    cmd /c f:\\vs_professional.exe /adminfile AdminDeployment.xml /passive /norestart
  EOH
end
