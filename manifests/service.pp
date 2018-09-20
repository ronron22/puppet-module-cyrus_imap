class cyrus_imap::services {
        service { 'cyrus-imapd':
          ensure  => running,
          enable  => true,
          restart => 'systemctl restart cyrus-imapd',
        }
}
