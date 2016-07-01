class phantomjs::remove (
  $package_version = '1.9.7',
  $source_dir = '/opt',
) {
  exec { 'remove phantomjs':
    command => "/bin/rm -rf ${source_dir}/phantomjs-${package_version}",
    notify  => Exec['get phantomjs']
  }
}
