# PROJECT SET UP

- First Download Ruby and developer kit from the web site
- install rubby
- instal rails like gem install rails
- now create project as "rails new myapp"
- now navigate to "cd myapp"
- now bundle install
- Install javascript packeges npm install
- for the app-starting "rails server"
- http://localhost:3000 run it
- u can change it on puma.rb

# FOLDER STRUCTURE

- you just use chat GPT for this to understand. but "app" is the main project folder
- ror has a similarity like Django in my opinion

# DATABSE

- Using Pgadmin password (postgres), username (django)
- use config folder out of app for the databse connection file(new file) and add it to config.ru

# GENERAL TIPS

- in rubby we instal a packege not by cmd
- like spring go to Gemefile the root directory and simple edit ex: gem "pg"
- then hit bundle install, it autometically instal this package(s)
- ruby use yml and .env both. for sensitive we have to use .env and for non sensitive we have to use yaml
- config.ru is the application starting entry point as like mern server.js
- ruby dont use import key word they use require
- file naming convension like student_cntroller, student-model, test_project etc

# Routes

- routing is very much simple add to app folder and add to config.ru. given in project

# CONTROLLERS

-rails generate controller Student

# MODELS

- rails generate model Student name:string age:integer (going tocreate the migration model)
- u must declear the data type while creating the model in ror
- bin/rails db:migrate
- then u can see the model in side app>models folder though the file is empty but u may add validation (optional) like
  validates :name, presence: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }
- see details in project but validation is added later manually

# POST

- This method wont work unless u change Base to API
  class ApplicationController < ActionController::API

end

# CORS

- instal gem rok-cors
- bundle install
- config>initilizer>make a file cors.rb then put the thing there given in code

# MIDDLEWARES

- two types are middlewares one is global (also known as stack works one by one)
  ex: in mern app.use(boy.jason)
- another one is dedicated just for a controller or method
  routes(url,middleware,controller.method)
- The new thing i have learn that, middleware for application level (for all all means all controllers and methods)
- and the filter is for the specific controller level or specific method levels
- in mern middlewares are when called globally are called middleware
- and when used for specific controllers and methods called filters thats it
- but mvc,spring,Djngo,ror, laravel we have middleware and filter diffrent concept
- u can use middleware as like mern thoes frame work. but they have filter also but mern dsnt have filter concept

