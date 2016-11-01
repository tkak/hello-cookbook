#
# Cookbook Name:: hello
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
directory '/usr/local/foo' do
  owner 'root'
  group 'root'
  mode '755'
end
