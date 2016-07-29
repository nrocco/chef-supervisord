name 'supervisord'
maintainer 'Chris Soyars'
maintainer_email 'ctso@ctso.me'
license 'All rights reserved'
description 'Installs/Configures supervisord'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
issues_url '' if respond_to?(:issues_url)
source_url 'https://github.com/nrocco/chef-supervisord' if respond_to?(:source_url)
version '0.3.0'

supports 'ubuntu', '= 12.04'
supports 'ubuntu', '= 14.04'
supports 'ubuntu', '= 16.04'
