require 'webmock'

RSpec.configure do |config|
  config.before :each do
    if example.metadata.has_key?(:integration)
      WebMock.allow_net_connect!
    else
      es_url = URI.parse(ELASTICSEARCH_URL)

      allowed_hosts = [/#{es_url.host}:#{es_url.port}/]
      allowed_hosts << /127.0.0.1:#{Capybara.current_session.server.port}/ if Capybara.current_session.server
      allowed_hosts << %r{/((__.+__)|(hub/session.*))$}
      WebMock.disable_net_connect!(allow: allowed_hosts)
    end
  end

  config.after :each do
    WebMock.allow_net_connect!
  end
end
