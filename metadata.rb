name 'sourcetree'
maintainer 'Tyler Wong'
maintainer_email 'ty-w@live.com'
license 'Apache 2.0'
description 'Installs/Configures SourceTree'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.1.0'
chef_version '>= 12.1' if respond_to?(:chef_version)
supports 'windows'
issues_url 'https://github.com/T-Wong/sourcetree/issues' if respond_to?(:issues_url)
source_url 'https://github.com/T-Wong/sourcetree' if respond_to?(:source_url)
