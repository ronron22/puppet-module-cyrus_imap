class cyrus_imap::service (

	$name = hiera('name')
	$enable = hiera('enable')
	$status = hiera('status')

	) inherits cyrus_imap {

		service { $name:
			ensure  => $status,
			enable  => $enable,
			restart => "systemctl restart $name",
		}
}
