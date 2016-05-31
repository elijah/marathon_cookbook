#
# Cookbook Name:: marathon
# Recipe:: service
#

poise_service 'marathon' do
  provider :systemd
  user node['marathon']['user']
  command ::File.join(node['marathon']['home'], 'wrapper')
end
