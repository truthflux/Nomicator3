source 'https://rubygems.org'
#ruby-gemset=nomicatorr


# Use rspec, spring, selenium and capybara for testing
group :development, :test do
  gem 'rspec-rails', '2.13.1'
  gem 'spring-commands-rspec'
  gem 'spring'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.0'
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0.beta4'
# Use postgresql as the database for Active Record
gem 'pg', '0.15.1'
# Use SCSS for stylesheets, Bootstrap and fix sprockets version (Rails asset pipeline)
gem 'sass-rails', '~> 5.0.0.beta1'
gem 'bootstrap-sass', '3.2.0.2'

# Use bcrypt for password hashing
gem 'bcrypt', '3.1.7'

# Use Uglifier as com.buttonpressor for JavaScript assets
gem 'uglifier', '2.1.1'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.1'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

group :production do
  gem 'rails_12factor', '0.0.2'
end