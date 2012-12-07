class advanced {
  # These are the files that we manage with this class
  $managed_files = [
    '/etc/puppetlabs/puppet/auth.conf',
  ]
  advanced::template { $managed_files :}
}
