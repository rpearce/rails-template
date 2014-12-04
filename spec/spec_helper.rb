# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/its'
require 'pry'
require 'factory_girl_rails'
require 'faker'
require 'webmock/rspec'
require 'database_cleaner'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

include ActionDispatch::TestProcess

RSpec.configure do |config|
  # Print the 10 slowest examples and example groups at the
  # end of the spec run, to help surface which specs are running
  # particularly slow.
  config.profile_examples = 10

  config.infer_base_class_for_anonymous_controllers = false

  config.order = :random

  config.include FactoryGirl::Syntax::Methods
  config.include Rails.application.routes.url_helpers
end
