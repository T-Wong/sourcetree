#
# Cookbook:: sourcetree
# Recipe:: windows
#
# Copyright:: 2017, Tyler Wong, All Rights Reserved.

windows_package 'SourceTree' do
  checksum node['sourcetree']['windows']['checksum']
  installer_type :custom
  options '/q'
  source "#{node['sourcetree']['windows']['source']}/SourceTreeSetup_#{node['sourcetree']['windows']['version']}.exe"
  action :install
end
