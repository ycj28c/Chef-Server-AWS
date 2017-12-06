#
# Cookbook:: zoo_api
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'java'
include_recipe 'git'

user 'chefed'

# download from my git repo
git "/opt/zoo_api" do
  repository "https://github.com/ycj28c/SpringBoot-Zoo-Demo.git"
  reference "master"
  action :sync
end


