# README

This project was made for BlueCoding Challenge. the application started being an api, but was asked to implement pages to show the most clicked links. Then views were created.

* Ruby version:
`2.6.0`

* Algorithm
```
The original url is stored in database and the link id is converted to a base 36 string, which is used to be the shorten url.
```

* Configuration:
```
Database: PostgreSQL
Background Jobs: Sidekiq
```

* Usage:
```
clone the repo
type: bundle install
create the database with: rails db:create
populate database(if you want): rails db:seed
access localhost:3000 and enjoy the application
```

* Database creation
```
rails db:create
```

* Database initialization: `includes seed file with informations to populate database`
```
rails db:seed
```
* How to run the test suite
```
bundle exec rspec
```
