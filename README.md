# README

Rails app to create shorten URL's.

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
```
Type thw following command to execute the application and access localhost:3000
```
bash start.sh
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

* Heroku Deploy: `Follow these steps`
```
heroku create app-name
```
```
git push heroku master
```
```
heroku run rake db:migrate
```
```
heroku config:set BASE_URL=https://shrt.url/
```
```
heroku addons:add redistogo
```
```
heroku ps:scale worker+1
```
```
heroku open
```
### Enjoy the application :)
