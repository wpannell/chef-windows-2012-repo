batch "install visual studio 2013"  do
  code <<-EOH
    c:
    cmd /c f:\\vs_professional.exe /adminfile f:\\AdminDeployment.xml /passive /norestart
  EOH
end
