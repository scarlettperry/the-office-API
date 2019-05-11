to dowload Rails gem on your system
    - gem install Rails

to create a new Rails application
    - rails new name-of-app

to create database
    - rake db:create

to make changes to the schema
    - rake db:migrate

to load data from seed file into the database
    - rake db:seed

to run server 
    - rails s

to go into the Rails console
    - rails c

1. create the database: rake db:create
2. 

structure
    - app contains: models, view, and controllers. if make a change her, don't need to restart the server
        model: contains validations, database relationships
        controller: manage data flow of the endpoints that are hit; CRUD behavior; connects the models, views, and routes
        view: UI to access endpoints
    - config: the application routes
    - db: contains schema with the database tables, columns, and data type. can create dummy data in seeds.rb file
    - gemfile: all the gems included in the application. if write a new gem in the file, need to run bundle
    - Gemfile.lock should not be edited

## naming conventions
    - controllers are plural; camelCase
    - routes are pluarl
    - models are singluar; camelCase

# creating Rails API
1. `rails new name-of-app --database=postgresql --api`
   -  `--api` includes tools needed for API
   - `--database=postgresql` in case I want to push this on heroku

2. add `gem 'active_model_serializers'` to the Gemfile. Convert data into a format that can be transferred across a netowrk as a string and then reconstructed later. Can also use the serializer gem to shape our data (in the form of the model relationships) when making API requests

3. uncomment `gem rack-cors` in the Gemfile. CORS is a security feature that prevents API calls from unknown origins

4. run `bundle install`

5. go to `config/initializers/cors.rb`, uncomment the code, and add `*` in `origins` to allow requests from all origins and allow CRUD requests to the API

6. create database models with `rails g model Employee first_name last_name`, attributes default to string. can specify data types by `rails g model Employee first_name last_name active:boolean`
    - for belongs_to models, add `t.references :department`

7. `rails db:create`

8. `rails db:migrate`

9. add the relationships in each of the models
    - has_many :model_names
    - belongs_to :model_name
    - has_many :model_names, through: :model_names

10. test model relationships work by adding dummy data in `seeds.rb`

11. set up the routes. the heirarchy has to the be the same as the controllers folder `api->vi`

12. `rails g serializer name_of_model` & add the model relationships in each serializer file

13. create the controllers ex: `rails g controller api/v1/Employees` <- plural and camelCase

14. in controllers, `render json: @employees`