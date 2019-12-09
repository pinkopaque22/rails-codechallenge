# Spin Code Challenge

Since Spin relies on geographical features of PostgresQL, your challenge will be to implement a few geo-related features from our backend. Of course, your are not expected to build a frontend for these, but instead use your tests as the interface.

## Setup and requirements

* Create a Github repository and invite `dirkdk` to it. We'll fork this repo into our org so we can review.
* Push code regularly with meaningful commit messages.
* No authentication layer is needed
* Tests are required, though not at 100% coverage.
* Test enough to make you confident that the feature will work. Use your best judgement here. If you think of edge cases, include them as you see fit!
* You must use PostGIS functions somewhere in your code via the `activerecord-postgis-adapter` (included in Gemfile). Don't rely only on Ruby gems to perform geographic calculations.

## Challenge details

You have a fleet of 50 scooters in San Francisco. Your goal is to construct REST API endpoints and responses for these clients.

1. Scooter with IoT capabilities reporting its current location and battery life

Vehicles will report their lat/long and battery level, every 5 seconds, during a trip.

2. Mobile app used by our operations team

This app should be able to:

* Open a maintenance ticket
* Mark a scooter as inactive and being picked up for maintenance

3. Mobile app used by customers

This app should be able to show where active scooters are on a map within a given radius from the user's current lat/long location.

Active scooters are defined as those having >= 30% battery life and not picked up for maintenance.

Bonus points: Scooters should only be visible during the 9am - 5pm riding window in the US Pacific time zone.


## Things we'll ask you about in code review

* How would you design this data model to efficiently handle historical data queries when that table reaches 100M records?
* Where are there be caching opportunities?
* what are ways to support multiple types of vehicles, e.g. ebikes or go cars

# Setup via Docker

I you don't want to setup services locally, you can use the enclosed `docker-compose.yml` to get started.

## Install docker for Mac (or Linux)

## Build images

`docker-compose build`

## Setup database

`docker-compose run web rake db:drop db:setup`

## Enter web container and possibly run rails console (or if installed rspec)

### First start services
`docker-compose up`

### Enter web container
`docker-compose exec web bash`

### Start rails console
and then you can run

`rails console`
