batch "install visual studio 2013"  do
  code <<-EOH
    c:
    cd "\\"
    f:\\vs_professional.exe /adminfile AdminDeployment.xml /passive /norestart
  EOH
end
