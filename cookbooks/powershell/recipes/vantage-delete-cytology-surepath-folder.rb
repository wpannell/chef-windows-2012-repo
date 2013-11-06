directory "#{node['iis']['surepathroot']}" do
  recursive true
  action :delete
end