name             'ntpdate'
maintainer       'Entrenext mobile'
maintainer_email 'josh@entrenextmobile.com'
license          'All rights reserved'
description      'Installs ntpdate updating cron'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'apt'
depends 'cron'

