#
# Cookbook Name:: abcde
# Recipe:: default
#
# Copyright 2013, Bill Parrott
#
# Licensed under the MIT license:
# http://www.opensource.org/licenses/mit-license.php
#

case node[:platform]
when "ubuntu"
  %w{abcde lame flac}.each do |a_package|
    package a_package
  end
end

template "/home/vagrant/.abcde.conf" do
  source "abcde.conf.erb"
  owner "vagrant"
  group "vagrant"
  mode 0644
end