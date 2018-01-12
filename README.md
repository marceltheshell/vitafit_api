# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


The requests used to test the api: 
BlogPosts
GET   curl "http://localhost:3000/api/blog"


Contacts
GET   curl "http://localhost:3000/api/contacts"
POST  curl -X POST "http://localhost:3000/api/contacts" -H "accept: application/json" -H "Content-Type: application/json" -d '{"contact": {"name": "Marcel Degas", "email": "marcel.degas@gmail.com"}}' 
