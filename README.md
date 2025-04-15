# minitrue example

```
$ minitrue init

$ minitrue addkey

$ minitrue set VAR1 var1_example

$ minitrue set VAR2 var2_example

$ minitrue set environment development

$ minitrue set workers 5

$ minitrue set port 9292

$ minitrue set db_host localhost
$ minitrue set db_username the_mighty_ngw
$ minitrue set db_password vEry_s3cur3p4ss
$ minitrue set db_name database_name

$ minitrue addconfig config/config.toml.mt
$ minitrue addconfig config/database.yml.mt config/database.yml
$ minitrue addconfig config/puma.rb.mt config/puma.rb

$ minitrue compose

$ docker compose up --build
```
