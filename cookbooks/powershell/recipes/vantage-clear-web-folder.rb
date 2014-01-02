batch "clear temp folder" do
  code <<-EOH
    rm -r "#{node['iis']['surepathroot']}"
    md "#{node['iis']['surepathroot']}"
  EOH
end
