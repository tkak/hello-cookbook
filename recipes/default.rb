#
# Cookbook Name:: hello
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'zsh' do
  action :install
end

directory '/usr/local/foo' do
  owner 'root'
  group 'root'
  mode '755'
end

file '/usr/local/foo/bar' do
  content 'Hello'
  owner 'root'
  group 'root'
  mode '644'
end
