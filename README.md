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


The CURL requests used to test the api: 
BlogPosts
GET   curl "http://localhost:3000/api/blog"
POST  curl -X POST "http://localhost:3000/api/blog" -H "accept: application/json" -H "Content-Type: application/json" -d '{"blog_post": {"title": "Extra extra, read all about it!", "content": "Mayra is the coolest"}}'


Contacts
curl -X POST "http://localhost:3000/api/contacts" -H "accept: application/json" -H "Content-Type: application/json" -d '{"first_name":"animal", "last_name":"chief","email":"marcel.degas@gmail.com","message":"Hey Im excited to work together!"}' 
