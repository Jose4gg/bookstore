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

# EXAMPLE CODE FOR TESTING

```
CREATE A AUTHOR

curl --location --request POST 'http://localhost:3000/authors' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
	"first_name": "Draymond", "last_name": "Casals"

}'

```

```
CREATE A BOOK

curl --location --request POST 'http://localhost:3000/books' \
--header 'Content-Type: application/json' \
--header 'Content-Type: text/plain' \
--data-raw '{
	"title": "ABC Ages 3-5: New Edition", "price": 50, "isbn": "9780008151508", "short_description": "An engaging ABC activity book to really help boost your child'\''s progress at every stage of their learning! Fully in line with the Early Years Foundation Stage, this English book provides reassurance whilst supporting your child'\''s learning at home.", "author_id": 1

}'

```

```
FIND BOOK BY ISBN

curl --location --request GET 'http://localhost:3000/books/isbn/9781472154668'

```

```
FIND BOOK BY TITLE

curl --location --request GET 'http://localhost:3000/books/?title=the'

```
