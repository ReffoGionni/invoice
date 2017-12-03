# README

* Application informations

Application name: invoice
Authors: Team14 (AnnaGiovanelli & GionniReffo)
Provided to: UniTn "ase2017"

* Documentation can be found in

doc/"User Story - TEAM 14_v03_20171125.pdf"

* Ruby version

Authors has used "Rails" over "Ruby 2.3.4" and "2.4.2"

* System dependencies

Run:
  bundle install

* Configuration

* Database creation

Run:
  rails db:migration

* To recreate the database

Run:
  rake db:drop db:create db:migrate

* How to run the test suite

Run:
  rake cucumber

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

To start Rails server use:
  rails server
  
If port 3000 is blocked by firewall, you can force IPaddress and/or port using:
  rails server -b 0.0.0.0 -p 8080
