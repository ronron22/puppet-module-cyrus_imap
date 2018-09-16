class cyrus_imap::install (
    $cyrus_imap_packages = hiera('cyrus_imap_packages'),
    ) {

    include cyrus_imap::services

    $cyrus_imap_packages.each |String $package|{
        package { "$package":
          ensure  =>  installed,
         }
    }
}
