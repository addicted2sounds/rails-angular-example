source 'https://rubygems.org'

gem 'rademade_admin', github: 'rademade/rademade_admin'

gem 'sqlite3', group: [:development, :test]
gem 'pg', group: :production

gem 'json'
gem 'rabl'
gem 'bower-rails'

# Assets
gem 'sass-rails'
gem 'compass-rails'

#Scripts
gem 'coffee-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'angular-rails-templates'
gem 'angularjs-rails-resource'

gem 'faker'
gem 'money-rails'
gem 'kaminari'

group :development do
	gem 'capistrano', '3.2.1'
	gem 'capistrano-rails', '~> 1.1'
	gem 'capistrano-bundler'
	gem 'capistrano-rvm', '0.1.2'
	gem 'hipchat', '~> 1.2.0'
	gem 'rails-dev-tweaks'
	gem 'quiet_assets', group: :development
  gem 'pry-rails'
	gem 'spring'
end

group :test, :development do
	gem 'shoulda-matchers', require: false
	gem 'rspec-rails'
	gem 'capybara'
	gem 'database_cleaner'
	gem 'selenium-webdriver'
	gem 'factory_girl_rails'
  gem 'jasmine-rails'
end

# required for heroku
gem 'rails_12factor', group: :production
