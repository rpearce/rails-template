require 'webmock'

RSpec.configure do |config|
  config.before :each do |example|
    if example.metadata.has_key?(:integration)
      WebMock.allow_net_connect!
    else
      allowed_hosts = []
      allowed_hosts << /127.0.0.1:#{Capybara.current_session.server.port}/ if Capybara.current_session.server
      allowed_hosts << %r{/((__.+__)|(hub/session.*))$}
      WebMock.disable_net_connect!(allow: allowed_hosts)
    end
  end

  config.before :all do
    allowed_hosts = []
    allowed_hosts << /127.0.0.1:#{Capybara.current_session.server.port}/ if Capybara.current_session.server
    allowed_hosts << %r{/((__.+__)|(hub/session.*))$}
    WebMock.disable_net_connect!(allow: allowed_hosts)
  end

  config.before :suite do
    WebMock.allow_net_connect!
  end

  config.after :suite do
    WebMock.allow_net_connect!
  end
end
