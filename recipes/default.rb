# Cookbook:: barito-curator-cookbook
# Recipe:: default
#
# Copyright:: 2018, BaritoLog.
#
#

include_recipe 'barito_curator::user'
include_recipe 'barito_curator::install'
include_recipe 'barito_curator::config'
include_recipe 'barito_curator::cron'