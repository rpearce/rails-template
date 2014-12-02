RSpec.configure do |config|
  config.before(:each, js: true) do
    page.driver.browser.url_blacklist = ['http://fonts.googleapis.com/*']
  end
end
