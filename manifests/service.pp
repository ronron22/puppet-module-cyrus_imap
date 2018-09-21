class cyrus_imap::service (

	$service_name		= hiera('service_name'),
	$service_enable	= hiera('service_enable'),
	$service_status = hiera('service_status'),

	) inherits cyrus_imap {

		service { 'cyrus-imapd':
			ensure  => $service_status,
			enable  => $service_enable,
			restart => "systemctl restart $service_name",
		}
}
