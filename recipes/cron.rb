#
# Cookbook:: barito-curator-cookbook
# Recipe:: cron
#
# Copyright:: 2018, BaritoLog.
#
#
user = node[cookbook_name]['user']
barito_api_url = node[cookbook_name]['barito_api_url']
barito_api_client_key = node[cookbook_name]['barito_api_client_key']
release_name = node[cookbook_name]['release_name']
install_directory = node[cookbook_name]['install_directory']

cron_d 'barito-curator' do
  action :create
  minute '59'
  hour '23'
  user user
  command %W{
    cd #{install_directory}/#{release_name} &&
    export BARITO_API_URL="#{barito_api_url}" &&
    export BARITO_API_CLIENT_KEY="#{barito_api_client_key}" &&
    python3 barito_curator.py
  }.join(' ')
end