Exec { path => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' , '/usr/local/bin/' ] }

# Install Node and NPM
package { 'nodejs':
    ensure => 'installed',
}
package { 'nodejs-legacy':
    ensure => 'installed',
}
package { 'npm':
    ensure => 'installed',
}
exec { 'Install Gulp globally':
    command => 'sudo npm install -g gulp',
}
exec { 'Install npm dependencies':
    cwd     => '/vagrant/',
    command => 'npm install',
}

# Install Ruby
package { 'ruby-dev':
    ensure => 'installed',
}

# Install GitHub Pages gem
package { 'github-pages':
    ensure   => 'installed',
    provider => 'gem',
}
