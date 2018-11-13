#
# Cookbook:: barito-curator-cookbook
# Recipe:: install
#
# Copyright:: 2018, BaritoLog.
#
#

if Chef::VERSION.split('.')[0].to_i > 12
  apt_update
else
  apt_update 'apt update' do
    action :update
  end
end

package %w(python3-pip build-essential libssl-dev libffi-dev python3-dev)
