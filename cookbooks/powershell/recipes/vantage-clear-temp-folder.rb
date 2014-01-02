batch "clear temp folder" do
  code <<-EOH
    rm -r #{node['windows']['temproot']}
    md #{node['windows']['temproot']}
  EOH
end
