source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  # https://github.com/rspec/rspec-rails
  gem 'rspec-rails', '~> 3.7'
  # https://github.com/thoughtbot/shoulda-matchers
  gem 'shoulda-matchers', '~> 3.1'
  # https://github.com/thoughtbot/factory_bot_rails
  gem 'factory_bot_rails', '~> 4.10.0'
  # https://github.com/stympy/faker
  gem 'faker'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Shim to load environment variables from .env into ENV in development. https://github.com/bkeepers/dotenv
  gem 'dotenv-rails'
end

group :test do
  # https://github.com/DatabaseCleaner/database_cleaner
  gem 'database_cleaner'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
