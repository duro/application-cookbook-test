#
# Cookbook Name:: deploy-test
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"

package "git"

app_name = node["test"]["app_name"]

# Create App user
user node["test"]["user"] do
  home "#{node["test"]["home_path"]}"
  supports :manage_home=>true
  shell "/bin/bash"
  system true
end

log "Deploying from branch: #{node["test"]["repo"]["branch"]}"

application app_name do
  path        node["test"]["deploy_to"]
  owner       node["test"]["user"]
  group       node["test"]["group"]
  repository  node["test"]["repo"]["url"]
  revision    node["test"]["repo"]["branch"]
  deploy_key  node["test"]["repo"]["deploy_key"]

  action :force_deploy
end