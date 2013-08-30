#
# Cookbook Name:: mounter
# Recipe:: default
#
# Copyright 2013, Tom Santos
#
# All rights reserved - Do Not Redistribute
#

node['mounter']['pairs'].each do |pair|
  path, dev = pair
  mount path do
    device dev
    action :mount
  end
end
