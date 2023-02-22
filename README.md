# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.6.1p33 

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


How I'm currently creating models.

----User----

id (auto generated) 
has many posts through likes
has many posts through dislikes

Model Gen

bin/rails generate model User name:string like:references dislike:references

----Post----

id (auto generated)
has a title
has a discrition
(optionaly) will have a photo
has many users through likes
has many users through dislikes

bin/rails generate model Post title:string description:text img:string like:references dislike:references


----Like----

(id auto generated)

has one post
has one user

bin/rails generate model Like post:references user:references  

----Dislike----

has one post
has one user

bin/rails generate model Dislike post:references user:references  