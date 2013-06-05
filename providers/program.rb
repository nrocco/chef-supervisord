action :supervise do
  template "#{node['supervisord']['conf_dir']}/conf.d/#{new_resource.name}.conf" do
    source "supervised-program.conf.erb"
    cookbook "supervisord"
    owner "root"
    group "root"
    mode 0644
    notifies :reload, resources(:service => "supervisor")

    variables(
      :name => new_resource.name,
      :autostart => new_resource.autostart,
      :autorestart => new_resource.autorestart,
      :directory => new_resource.directory,
      :user => new_resource.user,
      :startsecs => new_resource.startsecs,
      :stopwaitsecs => new_resource.stopwaitsecs,
      :redirect_stderr => new_resource.redirect_stderr,
      :stdout_logfile => new_resource.stdout_logfile,
      :environment => new_resource.environment,
      :command => new_resource.command
    )

  end
end
