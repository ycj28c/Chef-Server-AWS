#
# Cookbook:: aws-tomcat
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.


tomcat_install 'helloworld' do
  version '8.0.36'
end

tomcat_service 'helloworld' do
  action :start
  env_vars[{ 'CATALINA_PID' => '/my/special/path/tomcat.pid' }]
end


