batch "clear temp folder" do
  code <<-EOH
    rm -r "#{node['iis']['servicesroot']}"
    md "#{node['iis']['servicesroot']}"
  EOH
end
