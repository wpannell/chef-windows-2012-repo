batch "clear workstations folder" do
  code <<-EOH
    rm -r "#{node['iis']['workstationsroot']}"
    md "#{node['iis']['workstationsroot']}"
  EOH
end
