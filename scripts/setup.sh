#!/bin/bash
docker-compose build --pull
docker-compose up -d postgres
sleep 2

docker-compose run --rm engine bundle exec rake db:create db:schema:load
docker-compose run --rm event-store bundle exec rake db:create db:migrate
