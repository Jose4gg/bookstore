# SETUP

```
docker-compose build
docker-compose run web bundle exec rails db:create
docker-compose run web bundle exec rails db:migrate
docker-compose run web bundle exec rails db:seed
docker-compose up
```

# SETUP TO RUN TEST

```
docker-compose run web bundle exec rails db:create RAILS_ENV=test
docker-compose run web bundle exec rails db:migrate RAILS_ENV=test
docker-compose run web bundle exec rails db:seed RAILS_ENV=test


docker-compose run web bundle exec rspec
```
