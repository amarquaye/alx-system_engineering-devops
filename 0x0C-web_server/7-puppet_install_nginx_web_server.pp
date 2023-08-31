# By Jesse Amarquaye

# Command to install and configs nginx server
# ALX SWE Project

package { 'nginx':
  ensure => 'installed',
}

file { 'index.nginx-debian.html':
  path    => '/var/www/html/index.nginx-debian.html',
  content => 'Hello World!',
}

exec { 'config':
  command  => 'sed -i "s/server_name _;/server_name _;\n\trewrite ^\/redirect_me https:\/\/www.github.com/amarquaye permanent;/" /etc/nginx/sites-available/default',
  provider => 'shell',
}
exec { 'start':
  command  => 'sudo service nginx restart',
  provider => 'shell',
}
