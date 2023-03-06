source "https://rubygems.org"

ruby '2.7.4'

# A DSL for quickly creating web applications
gem 'sinatra', '~> 3.0', '>= 3.0.5'

# An object-relational mapper
gem 'activerecord', '~> 7.0', '>= 7.0.4.2'

# Configures common Rake tasks for working with Active Record
gem 'sinatra-activerecord', '~> 2.0', '>= 2.0.26'

# Rack middleware. Used specifically for parsing the request body into params.
gem 'rack-contrib', '~> 2.3'

# Run common tasks from the command line
gem 'rake', '~> 13.0', '>= 13.0.6'

# Provides functionality to interact with a SQLite3 database
gem 'sqlite3', '~> 1.6', '>= 1.6.1'

# Require all files in a folder
gem 'require_all', '~> 3.0'

#Middleware that makes Rack-based apps CORS compatible.
gem 'rack-cors', '~> 2.0'

gem 'puma', '~> 6.1', '>= 6.1.1'
gem 'thin', '~> 1.8', '>= 1.8.1'
gem 'falcon', '~> 0.42.3'
gem 'webrick', '~> 1.8', '>= 1.8.1'

# These gems will only be used when we are running the application locally
group :development do
    # Used to generate seed data
    gem 'faker', '~> 3.1', '>= 3.1.1'

    # Auto-reload the server when files are changed
    gem "rerun"

end