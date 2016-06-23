# lamp-server-cookbook

Basic Linux-Apache-MySQL-PHP server setup.

Sets up our server to run a standard LAMP stack setup.

## Supported Platforms

* RHEL/Fedora/CentOS
* Debian/Ubuntu

## Attributes

None at this time.

## Usage

### lamp-server::default

Include `lamp-server` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[lamp-server::default]"
  ]
}
```

You'll want to include your sites in a vault or databag named `sites`. The name
of the record should be the site's abbreviated name, the body should be formatted
as follows:

```
{
  # The site's real name.
  "name": "Madison Example",
  # A short name for the site for directories, etc.
  "shortname": "madisonex",
  # The main url for the site.  Leave off the protocol (http/https).
  "url": "example.mymadison.io",
  # A list of the Chef nodes to deploy the site to.
  "servers": ["Madison-Dev-1","default-ubuntu-1404","default-centos-67"],
  # The type of site.  Currently supports 'madison' and 'wordpress'.
  "type": "madison",
  # Database configuration settings will be used to create the user & database.
  "database_name": "madisonex",
  # The password for the database.
  "database_password": "asdjfklz",
  # The username for the database.
  "database_username": "madisonex",
  # All of your mail configuration settings for the app. (Optional)
  "mail_driver": "smtp",
  "mail_host": "mailtrap_io",
  "mail_port": "2525",
  "mail_username": "null",
  "mail_password": "null",
  "mail_encryption": "null",
  "mail_from_address": "user@example.com",
  "mail_from_name": "user"
}
```

## Notes

We run MariaDB instead of MySQL.  Unfortunately this causes problem
with the default `php` cookbook, which is hardcoded to use MySQL.
We get around this by using [our own fork of the `php` cookbook](https://github.com/opengovfoundation/cookbook-php)

## TODO

Split out the Madison and Wordpress specific code into their own cookbooks.

## License

[CC0 Licensed](https://creativecommons.org/publicdomain/zero/1.0/)
