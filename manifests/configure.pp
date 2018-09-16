class cyrus_imap::configure (
    $nodename = hiera('nodename'),
    ) {

    include cyrus_imap::services

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
