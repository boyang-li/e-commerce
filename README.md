E-COMMERCE
==============

E-COMMERCE is a multi-purpose online-store application. You can customize it into any store you want.

Hardware and Software Requirements
----------------------------------

- Ruby (2.1.1)
- Ruby on Rails (4.1.0rc1)
- SQLite3

Installation Instructions
-------------------------

1. Get a copy of the code from the remote repository and place it into local repository:

        git clone "git address"

2. Bundle gems:

        bundle install

    if using `rbenv` to manage ruby environments

        rbenv rehash

3. Setup database:  
  
    Modify the config/database.yml to match your database configuration on your machine.

    If using MySQL, create local database with the same names in database.yml.
    
    Then run migrations:

        rake db:migrate

Initial Application Setup
-------------------------
TBD...

Features
--------
TBD...
