# Increases amount of traffic an Nginx server

# Increase the ULIMIT of default file
exec { 'fix--for-nginx':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/'
} ->

# Restart Nginx server
exec { 'nginx-restart':
  command => 'nginx restart',
  path    => '/etc/init.d/'
}
