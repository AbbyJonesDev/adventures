source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.4'

# Use Postgresql as the database for Active Record
gem 'pg'

# Use New Relic for monitoring
gem 'newrelic_rpm'

# Use Figaro to load ENV variables for given environment
gem 'figaro'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'

# Use Zurb Foundation
gem 'foundation-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Use Paperclip to manage file attachments.  Read more: https://github.com/thoughtbot/paperclip
gem "paperclip", "~> 4.1"

# Use Amazon Web Services S3 storage for file attachments
gem 'aws-sdk'

# Use Devise for Admin and User authentication
gem 'devise'

# Use tinyMCE to add rich text editor for blog posts
gem 'tinymce-rails'

# Use Redcarpet to parse Markdown files
gem 'redcarpet'
# Use Rouge for syntax highlighting
gem 'rouge'

# Use FriendlyID to generate SEO friendly URL's
gem 'friendly_id'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

group :test do
  gem 'mocha'   # For mocks and stubs
  gem 'shoulda'   # For shoulda validations
  gem 'launchy'   # To save and open page when debugging specs
end

group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails', '~> 3.0.0.beta'
  gem 'capybara'  # To simulate user interaction with browser
  gem 'capybara-webkit'  # For pages with JavaScript - so they load in real webpage
  gem 'database_cleaner'  # To clean database after capybara-webkit messes it up
  gem 'selenium-webdriver'   # For pages with JavaScript
  gem 'debugger'
end

group :production do 
  gem 'rails_12factor' # To make app work on Heroku
end
