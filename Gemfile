source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'
# Use sqlite3 as the database for Active Record
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'haml', '~> 4.0', '>= 4.0.7'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'simple_form', '~> 3.2', '>= 3.2.1'
gem 'devise', '~> 4.1', '>= 4.1.1'
gem 'paperclip', '~> 4.3', '>= 4.3.6'
gem 'masonry-rails', '~> 0.2.4'
gem 'acts_as_votable', '~> 0.10.0'
gem 'launchy', '~> 2.4', '>= 2.4.3'

gem 'hirb', '~> 0.7.3'

gem 'pry-rails', '~> 0.3.4'
gem 'pry-byebug', '~> 3.4'

gem 'pundit', '~> 1.1'

gem 'aws-sdk', '< 2.0'

group :production do
  gem 'rails_12factor'
  gem 'pg'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'

  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'capybara', '~> 2.7', '>= 2.7.1'
  gem 'factory_girl', '~> 4.7'
end

group :test do
  gem 'database_cleaner', '~> 1.5', '>= 1.5.3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  gem 'better_errors', '~> 2.1', '>= 2.1.1'
  gem 'meta_request', '~> 0.4.0'

  gem 'bullet', '~> 5.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
