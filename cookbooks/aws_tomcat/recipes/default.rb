#
# Cookbook:: aws_tomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'java'
include_recipe 'tomcat'

user 'chefed'

# put chefed in the group so we can make sure we don't remove it by managing cool_group
group 'cool_group' do
  members 'chefed'
  action :create
end

# Install Tomcat 8.0.43 to the default location
tomcat_install 'helloworld' do
  tarball_uri 'http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz'
  tomcat_user 'cool_user'
  tomcat_group 'cool_group'
end

# Install Tomcat 8.0.43 to the default location mode 0755
tomcat_install 'dirworld' do
  dir_mode '0755'
  tarball_uri 'http://archive.apache.org/dist/tomcat/tomcat-8/v8.0.43/bin/apache-tomcat-8.0.43.tar.gz'
  tomcat_user 'cool_user'
  tomcat_group 'cool_group'
end
