# Recall ToDo list demo app

## Prerequisites

1. Remove recall.db from root level if you want a fresh database.
1. ``gem install sqlite3 datamapper dm-sqlite-adapter shotgun``
1. ``gem install sinatra-flash sinatra-redirect-with-flash``


## To run the app

To run, from commandline at root level:

1. ``shotgun recall.rb``
1. Then open a browser to http://localhost:9393/


## The Tutorial Guide

http://code.tutsplus.com/tutorials/singing-with-sinatra-the-recall-app--net-19128

Has really good explanations in a three part guide.

Welcome to Track 2 of Singing with Sinatra. In part one, we reviewed Routes, how to work with URI parameters, working with forms, and how Sinatra differentiates routes by the HTTP method they were requested by. Today, we're going to extend our knowledge of Sinatra by building a small database-driven app, "Recall," for taking notes/making a to-do list.

We're going to be using a SQLite database to store the notes, and we'll use the DataMapper RubyGem to communicate with the database.


## NOTE !!!!

Turns out rack-flash doesn't work with rack 1.4 (which is current) as advised in the above tutorial. So you have to use sinatra-flash instead.

gem install sinatra-flash

add "require 'sinatra/flash'" and remove "require 'rack-flash'" up top
remove the "use Rack::Flash, :sweep => true" line

i think that is all I did to get it working.
