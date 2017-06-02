$codedir = '/usr/local/etc/puppet'

package { 'r10k':
  ensure   => 'present',
  provider => 'gem',
  name     => 'r10k',
}

file { 'r10k.yaml':
  ensure => 'file',
  path   => "${codedir}/r10k/r10k.yaml",
  #content => template("${codedir}/r10k/r10k.yaml.erb")
}

file { "${codedir}/modules":
  ensure => 'directory',
}

file { [ "${codedir}/site", "${codedir}/site/profile", "${codedir}/site/profile/manifests" ]:
  ensure => 'directory',
}

file { "${codedir}/hieradata":
  ensure => 'directory',
}

file { [ "${codedir}/hieradata/common.yaml", "${codedir}/environment.conf", "${codedir}/Puppetfile", "${codedir}/site.pp" ]:
  ensure => 'file',
}

