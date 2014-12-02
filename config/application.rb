require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsTemplate # NOTE: change me!
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
    # config.i18n.default_locale = :de
    config.autoload_paths += %W(#{config.root}/app/responders lib)

    config.i18n.available_locales = [:en, :es]
    config.i18n.default_locale = :en
    config.i18n.fallbacks = true

    #config.cache_store = :mem_cache_store, ENV.fetch('CACHE_HOST')

    config.generators do |g|
      g.test_framework :rspec,
        fixtures: true,
        view_specs: true,
        helper_specs: true,
        routing_specs: true,
        controller_specs: true,
        request_specs: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.template_engine :haml
    end

    config.browserify_rails.commandline_options = "--fast -t coffeeify --extension=\".js.coffee\""
  end
end
