# Includes oauth2_proxy
#
# Recipe:: install
# Cookbook:: oauth2_proxy
# Author:: Mike Juarez <mike@orionlabs.co>
# License:: # Copyright (c) 2015 Orion Labs, Inc., All Rights Reserved.
# Source:: https://github.com/onbeep-cookbooks/oauth2_proxy
#

include_recipe 'ark'
include_recipe 'pleaserun::default'

ark 'oauth2_proxy' do
  url node['oauth2_proxy']['install_url']
  checksum node['oauth2_proxy']['checksum']
  path node['oauth2_proxy']['install_path']
  action :install
end

directory node['oauth2_proxy']['config_files'] do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end