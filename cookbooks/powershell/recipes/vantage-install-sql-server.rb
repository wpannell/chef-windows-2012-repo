batch "install sql server 2012"  do
  code <<-EOH
    F://setup /Q /IACCEPTSSQLSERVERLICENSETERMS /ConfigurationFile C://temp//sql-server-config.ini
  EOH
end


