#
# Cookbook:: barito-curator-cookbook
# Attribute:: default
#
# Copyright:: 2018, BaritoLog.
#
#

cookbook_name = 'barito_curator'

default[cookbook_name]['user'] = cookbook_name
default[cookbook_name]['group'] = cookbook_name
default[cookbook_name]['release_name'] = Time.now.strftime('%y%m%d%H%M')
default[cookbook_name]['barito_curator_repo'] = 'https://github.com/BaritoLog/barito-curator.git'
default[cookbook_name]['install_directory'] = "/opt/#{cookbook_name}"


default[cookbook_name]['barito_api_url'] = 'http://localhost/curator_api'
default[cookbook_name]['barito_api_client_key'] = 'abcd123'