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
  %w{abcde lame}.each do |a_package|
    package a_package
  end
end