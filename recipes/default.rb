#
# Cookbook Name:: supervisord
# Recipe:: default

inet_http_server = node['supervisord']['inet_http_server'].select { |k, v| k unless v.nil? }
inet_http_server = (inet_http_server unless inet_http_server.map { |_, v| !v.nil? }.select { |a| a }.empty?)

globals = node['supervisord']['globals'].select { |k, v| k unless v.nil? }
globals = (globals unless globals.map { |_, v| !v.nil? }.select { |a| a }.empty?)

supervisorctl = node['supervisord']['supervisorctl'].select { |k, v| k unless v.nil? }
supervisorctl = (supervisorctl unless supervisorctl.map { |_, v| !v.nil? }.select { |a| a }.empty?)

template '/etc/default/supervisor' do
  source 'supervisord.default.erb'
  owner 'root'
  group 'root'
  mode 0644

  notifies :stop, 'service[supervisor]', :immediately
  notifies :start, 'service[supervisor]', :delayed
end

template "#{node['supervisord']['conf_dir']}/supervisord.conf" do
  source 'supervisord.conf.erb'
  owner 'root'
  group 'root'
  mode 0644
  variables(
    unix_http_server: unix_http_server,
    inet_http_server: inet_http_server,
    globals: globals,
    supervisorctl: supervisorctl
  )
  notifies :reload, 'service[supervisor]', :immediately
end
