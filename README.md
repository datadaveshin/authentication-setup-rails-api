# Rails API starter

This is a rails api starter set up that has routes for registering a user, and logging them in and out using http cookies. It also passes info about the user to the front end when the user is logged in.

It is based on [Jordan Hudgens](https://www.youtube.com/watch?v=z18zLCAg7UU&list=PLgYiyoyNPrv_yNp5Pzsx0A3gQ8-tfg66j&index=1) set up with some mods. It should be able to talk to any front end, but in this case, it has been tested/matched up in development with a [React JS Frontend](https://github.com/datadaveshin/authentication-setup-react).

Here are some differences:

### Ruby version
2.5.3

### Rails version
5.2.3
- Initial app was set up using:
`rails new authentication_app --database=mysql --skip-coffee --skip-turbolinks`

### System dependencies
- Added in or uncommented in the Gemfile:
  1. `gem 'bcrypt', '~> 3.1.7'`
  1. `gem 'rack-cors', :require => 'rack/cors'`
- run `bundle install` after updating

### Configuration
- Used rails credentials to set up the database connection, ie. via: `EDITOR=vim rails credentials:edit`
- There is a place holder for production in `config/initializers/session_store.rb` that also would use your credentials.

### Database creation
- Used MySQL, and you can see how the credentials are set up in `config/database.yml`
- Otherwise, just use the typical rails commands to get the database up and running.

### Deployment instructions
- In development, because the [React frontend](https://github.com/datadaveshin/authentication-setup-react) runs on `localhost:3000`, start this rails api with: `rails s -p 3001`, or change these values for this backend, and those of the frontend according to your taste.
- To whitelist your development frontend incoming requests, change the `origins "http://localhost:3000"` code in `config/initializers/cors.rb`.
- For production, you will also need to do whitelist the site.
