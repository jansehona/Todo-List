### What is this?
> This is basic standalone rails api application used as a backend for an ember application. This repository goes hand-in-hand with the Ember front-end application. This is a repo for [Ember](https://github.com/jansehona/Ember).

### What i have used to setup the api
1. #### rails new todo_list --api -d postgresql
2. #### Adding gems to the Gemfile and bundle install
    > gem 'rack-cors'<br/>
    > gem 'active_model_serializers', '~> 0.10.0'<br/>
    > gem 'devise'<br/>
    > gem 'simple_token_authentication'
3. #### Create the database
    > rails db:create<br/>
    - Specified the database name in config/database.yml
4. #### Modifying CORS initializer to include this
      ```Ruby
        Rails.application.config.middleware.insert_before 0, Rack::Cors do
            allow do
                origins '*'

                resource '*',
                headers: :any,
                methods: [:get, :post, :put, :patch, :delete, :options]
            end
        end
     ```
