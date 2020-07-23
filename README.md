# README

There are still small amounts to be written here yet....

## How to use

```shell script
$ mkdir APPNAME
$ cd APPNAME

$ git submodule add https://github.com/ha4gu/docker-rails-commons submodules/commons
$ rsync -av submodules/commons/. ./. --exclude ".git"

```

## Things manually executed after install

### Timezone

```shell script
$ vim config/application.rb
```

```ruby
(略)
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Don't generate system test files.
    config.generators.system_tests = nil

    # Set JST as the default timezone of Rails
    config.time_zone = "Asia/Tokyo"

    # Set UTC as the default timezone of ActiveRecord for data stored in DB
    config.active_record.default_timezone = :utc
  end
end
```

### RailsAdmin

```shell script
$ rails g rails_admin:install
```

## Things need to be noted

- [Font\-awesome issue\. Again\. · Issue \#3216 · sferik/rails\_admin](https://github.com/sferik/rails_admin/issues/3216)
