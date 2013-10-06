## Turnip App

### テストの動かし方

```
$ cd path/to/turnip-app
$ bundle
$ bundle exec rake db:create
$ bundle exec rake db:migrate RAILS_ENV=test
$ bundle exec rspec -f d
```