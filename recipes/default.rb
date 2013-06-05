#
# Cookbook Name:: supervisord
# Recipe:: default
#
# Copyright 2013, Chris Soyars
#
# All rights reserved - Do Not Redistribute
#

package "supervisor" do
  action :install
end

service "supervisor" do
  supports :status => true, :restart => false, :reload => true
  reload_command "supervisorctl update"
  action [ :enable, :start ]
end

unix_http_server = node['supervisord']['unix_http_server'].select { |k,v| k unless v.nil? }
unix_http_server = (unix_http_server unless unix_http_server.map { |k,v| not v.nil? }.select { |a| a }.empty?)

inet_http_server = node['supervisord']['inet_http_server'].select { |k,v| k unless v.nil? }
inet_http_server = (inet_http_server unless inet_http_server.map { |k,v| not v.nil? }.select { |a| a }.empty?)

globals = node['supervisord']['globals'].select { |k,v| k unless v.nil? }
globals = (globals unless globals.map { |k,v| not v.nil? }.select { |a| a }.empty?)

supervisorctl = node['supervisord']['supervisorctl'].select { |k,v| k unless v.nil? }
supervisorctl = (supervisorctl unless supervisorctl.map { |k,v| not v.nil? }.select { |a| a }.empty?)

template "#{node["supervisord"]["conf_dir"]}/supervisord.conf" do
  source "supervisord.conf.erb"
  owner "root"
  group "root"
  mode 0644
  variables(
    :unix_http_server => unix_http_server,
    :inet_http_server => inet_http_server,
    :globals => globals,
    :supervisorctl => supervisorctl
  )
  notifies :reload, "service[supervisor]", :immediately
end
