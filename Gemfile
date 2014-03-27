source 'https://rubygems.org'

gem 'rails', '4.1.0.rc1'
gem 'sqlite3'

gem 'jquery-rails'
gem 'simple_form'
gem 'jbuilder', '~> 2.0'
gem 'turbolinks'
gem 'bcrypt-ruby', '~> 3.1.2'
# Use unicorn as the app server
# gem 'unicorn'

group :development do
	# gem 'annotate'
	gem 'better_errors'
	gem 'spring'
	# Use Capistrano for deployment
	# gem 'capistrano-rails'
end

group :test do
	# gem 'rspec_junit_formatter'
end

group :development, :test do
	# gem 'figaro'
  gem 'binding_of_caller'
  gem 'debugger'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'awesome_print'
  gem 'database_cleaner'
  gem 'json_spec'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
	gem 'uglifier', '>= 1.3.0'
	gem 'coffee-rails', '~> 4.0.0'
	gem 'therubyracer',  platforms: :ruby
	gem 'less-rails'
	gem 'twitter-bootstrap-rails'
end

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc