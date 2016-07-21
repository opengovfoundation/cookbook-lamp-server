name             'lamp-server'
maintainer       'The OpenGov Foundation'
maintainer_email 'developers@opengovfoundation.org'
license          'CC0'
description      'Installs/Configures a LAMP server'
long_description 'Installs/Configures a LAMP server'
version          '0.1.17'

depends 'base-server'
depends 'chef-vault'
depends 'rvm'
depends 'mariadb'
depends 'mysql2_chef_gem'
depends 'database'
depends 'apache2'
depends 'git'
depends 'ca-certificates'
depends 'php'
depends 'nodejs'
depends 'letsencrypt'
depends 'supervisor'
