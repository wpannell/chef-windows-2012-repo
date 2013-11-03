powershell "configure hosts file for vantage 3" do
  code <<-EOH
    Add-Content $env:SystemRoot\\system32\\drivers\\etc\\hosts '127.0.0.1 vantage3.ventana.com'
  EOH
end