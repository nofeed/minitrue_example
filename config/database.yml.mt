# vim: set syn=yaml

{{ mt["environment"] }}:
  <<: *default
  database: {{ mt["db_name"] }}
  username: {{ mt["db_username"] }}
  password: {{ mt["db_password"] }}
  host: {{ mt["db_host"] }}
