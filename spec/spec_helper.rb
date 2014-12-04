# This file is copied to spec/ when you run 'rails generate rspec:install'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/its'
require 'pry'
require 'faker'
require 'webmock/rspec'
require 'database_cleaner'

RSpec.configure do |config|
  # Print the 10 slowest examples and example groups at the
  # end of the spec run, to help surface which specs are running
  # particularly slow.
  # config.profile_examples = 10

  config.order = :random
end
