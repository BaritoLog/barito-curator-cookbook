#
# Cookbook:: barito-curator-cookbook
# Recipe:: config
#
# Copyright:: 2018, BaritoLog.
#
#

app_name = cookbook_name
user = node[cookbook_name]['user']
group = node[cookbook_name]['group']
release_name = node[cookbook_name]['release_name']
install_directory = node[cookbook_name]['install_directory']

directory install_directory do
  owner user
  group group
  mode '0755'
  recursive true
  action :create
end

git install_directory do
  repository node[cookbook_name]['barito_curator_repo']
  destination "#{install_directory}/#{release_name}"
  reference 'master'
  enable_checkout false
  user user
  group group
  action :sync
end

link "#{install_directory}/barito-curator"  do
  to "#{install_directory}/#{release_name}"
  action :create
  user user
  group group
end

execute 'pip_install' do
  command "pip3 install -r #{install_directory}/#{release_name}/requirements.txt"
end