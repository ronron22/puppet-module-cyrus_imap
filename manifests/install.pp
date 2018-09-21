class cyrus_imap::install (

	$cyrus_imap_packages = hiera('cyrus_imap_packages'),

	) inherits cyrus_imap {

	$cyrus_imap_packages.each |String $package|{
		package { "$package":
			ensure  =>  installed,
		}
	}

}
