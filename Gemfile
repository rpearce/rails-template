source 'https://rubygems.org'
source 'https://rails-assets.org'
ruby '2.1.5'

gem 'rails', '4.1.8'

gem 'activerecord-postgresql-citext' # REMOVE WHEN MOVING TO 4.2 -- https://github.com/braintree/activerecord-postgresql-citext/pull/4

gem 'browserify-rails', '~> 0.5'
gem 'coffee-rails'
gem 'draper'
gem 'factory_girl_rails', require: false
gem 'faker', require: false
gem 'foreman'
gem 'haml'
gem 'i18n-language-translations'
gem 'jbuilder'
gem 'jquery-rails'
gem 'json_spec'
gem 'permanent_records'
gem 'pg'
gem 'puma'
gem 'react-rails', '~> 0.12'
gem 'responders'
gem 'sass-rails'
gem 'simple_form'
gem 'uglifier'

# Rails Assets
gem 'rails-assets-console-polyfill'
gem 'rails-assets-es5-shim'
gem 'rails-assets-headroom.js'
gem 'rails-assets-i18next'
gem 'rails-assets-lodash'
gem 'rails-assets-normalize.css'
# end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'bullet'
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'immigrant'
  gem 'letter_opener'
  gem 'oauth2'
  gem 'pry'
  gem 'quiet_assets'
  gem 'rspec-rails'
  gem 'rspec-collection_matchers'
  gem 'timecop'
end

group :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'capybara-screenshot'
  gem 'database_cleaner'
  gem 'fuubar'
  gem 'headless'
  gem 'launchy'
  gem 'rspec-its'
  gem 'shoulda-matchers'
  gem 'webmock'
end
