class cyrus_imap::config (

	$nodename = hiera('nodename'),

	) inherits cyrus_imap {

	file { '/etc/cyrus.conf':
		ensure  => present,
		content => file("cyrus_imap/${nodename}/etc/cyrus.conf"),
		notify   => Service['cyrus-imapd'],  
	}
	file { '/etc/imap.conf':
		ensure  => present,
		content => file("cyrus_imap/${nodename}/etc/imapd.conf"),
		notify   => Service['cyrus-imapd'],  
	}
}
