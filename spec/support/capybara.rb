Capybara.configure do |config|
  config.default_driver = :rack_test
  config.javascript_driver = :webkit
end
