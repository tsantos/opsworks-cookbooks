#
# Cookbook Name:: mounter
# Recipe:: default
#
# Copyright 2013, Tom Santos
#
# All rights reserved - Do Not Redistribute
#

node['mounter']['specs'].each do |spec|
  path, dev, type = spec
  mount path do
    device dev
    fstype type
    action :enable
  end
end
