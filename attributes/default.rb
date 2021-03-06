default['supervisord']['conf_dir'] = '/etc/supervisor'

default['supervisord']['daemon_opts'] = ''

default['supervisord']['included_files'] = [
  "#{node['supervisord']['conf_dir']}/conf.d/*.conf"
]

default['supervisord']['globals']['logfile'] = '/var/log/supervisor/supervisord.log'
default['supervisord']['globals']['pidfile'] = '/var/run/supervisord.pid'
default['supervisord']['globals']['childlogdir'] = '/var/log/supervisor'
default['supervisord']['globals']['logfile_maxbytes'] = nil
default['supervisord']['globals']['logfile_backups'] = nil
default['supervisord']['globals']['loglevel'] = nil
default['supervisord']['globals']['nodaemon'] = nil
default['supervisord']['globals']['minfds'] = nil
default['supervisord']['globals']['minprocs'] = nil
default['supervisord']['globals']['umask'] = nil
default['supervisord']['globals']['user'] = nil
default['supervisord']['globals']['identifier'] = nil
default['supervisord']['globals']['directory'] = nil
default['supervisord']['globals']['nocleanup'] = nil
default['supervisord']['globals']['strip_ansi'] = nil
default['supervisord']['globals']['environment'] = nil

default['supervisord']['unix_http_server']['file'] = '/var/run/supervisor.sock'
default['supervisord']['unix_http_server']['chmod'] = '0700'
default['supervisord']['unix_http_server']['chown'] = nil
default['supervisord']['unix_http_server']['username'] = nil
default['supervisord']['unix_http_server']['password'] = nil

default['supervisord']['inet_http_server']['port'] = 10000
default['supervisord']['inet_http_server']['username'] = nil
default['supervisord']['inet_http_server']['password'] = nil

default['supervisord']['supervisorctl']['serverurl'] = 'unix:///var/run/supervisor.sock'
default['supervisord']['supervisorctl']['username'] = nil
default['supervisord']['supervisorctl']['password'] = nil
default['supervisord']['supervisorctl']['prompt'] = nil
default['supervisord']['supervisorctl']['history_file'] = nil
