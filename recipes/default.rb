#
# Cookbook Name:: libevent
# Recipe:: default
#
# Author:: Louis-Alban KIM
# Copyright:: Copyright (c) 2012, Louis-Alban KIM
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

install_command = []
install_command << './configure'
install_command << 'make'
install_command << 'make install'

remote_file "/tmp/#{node['libevent']['tar']}" do
  source node['libevent']['url']
  checksum node['libevent']['checksum']
end

unless ::File.exists?("#{Chef::Config[:file_cache_path]}/.libevent-installed")

  execute "untar libevent" do
    command "tar -zxf #{node['libevent']['tar']}"
    cwd "/tmp"
  end

  execute "install libevent" do
    command install_command.join(" && ")
    cwd "/tmp/#{node['libevent']['dir']}"
  end

  file "#{Chef::Config[:file_cache_path]}/.libevent-installed"
end
