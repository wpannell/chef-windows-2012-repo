batch "clear external services folder" do
  code <<-EOH
    rm -r "#{node['iis']['externalservicesroot']}"
    md "#{node['iis']['externalservicesroot']}"
  EOH
end

