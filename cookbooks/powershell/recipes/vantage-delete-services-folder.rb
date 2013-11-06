directory "#{node['iis']['servicesroot']}" do
  recursive true
  action :delete
end