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

remote_file '/opt/zoo_api/bootzoo.jar' do
  source 'https://downloads.sourceforge.net/project/springboot-zoo-demo/bootZoo-0.0.1-SNAPSHOT.jar?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fspringboot-zoo-demo%2F%3Fsource%3Dnavbar&ts=1512600396&use_mirror=cfhcable'
  owner 'cool_user'
  mode '0755'
end

service 'bootzoo' do
  action [:enable, :start]
end
