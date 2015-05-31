actions :supervise

attribute :name,            kind_of: String,                  name_attribute: true
attribute :directory,       kind_of: String,                  required: false
attribute :autostart,       kind_of: [TrueClass, FalseClass], default: true
attribute :autorestart,     kind_of: String,                  default: 'unexpected'
attribute :user,            kind_of: String,                  default: 'root'
attribute :startsecs,       kind_of: Integer,                 default: 5
attribute :stopwaitsecs,    kind_of: Integer,                 default: 300
attribute :redirect_stderr, kind_of: [TrueClass, FalseClass], default: true
attribute :stdout_logfile,  kind_of: String,                  default: 'AUTO'
attribute :environment,     kind_of: String
attribute :command,         kind_of: String,                  required: true
