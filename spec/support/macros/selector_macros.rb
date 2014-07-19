module SelectorMacros
  def within(selector)
    yield Capybara.string(@rendered).find(selector)
  end
end

RSpec.configure do |config|
  config.include SelectorMacros, type: :view
end
