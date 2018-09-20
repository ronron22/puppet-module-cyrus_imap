class cyrus_imap::service {
        service { 'cyrus-imapd':
          ensure  => running,
          enable  => true,
          restart => 'systemctl restart cyrus-imapd',
        }
}
