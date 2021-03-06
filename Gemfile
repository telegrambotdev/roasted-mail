# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

gem 'activeadmin'
gem 'activeadmin_quill_editor'
gem 'countries'
gem 'devise'
gem 'dotenv-rails'
gem 'faker', git: 'https://github.com/faker-ruby/faker.git', branch: 'master'
gem 'font-awesome-sass', '~> 5.13.0'
gem 'google-cloud-storage', '~> 1.11', require: false
gem 'jb'
gem 'json'
gem 'mail'
gem 'newrelic_rpm'
gem 'pagy', '~> 3.5'
gem 'rack-attack'
gem 'rswag-api'
gem 'rswag-ui'
gem 'sentry-raven'
gem 'twilio-ruby'
gem 'whenever', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'brakeman'
  gem 'bundler-audit'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'fabrication'
  gem 'rspec-rails'
  gem 'rswag-specs'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '~> 3.2'
  gem 'rails_real_favicon'
  gem 'rubocop', '~> 0.85.1', require: false
  gem 'rubocop-rails', require: false
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'database_cleaner-active_record'
  gem 'simplecov', require: false
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '>= 2.15'
  # gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  # gem 'webdrivers'
end
