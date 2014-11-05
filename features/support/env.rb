require 'capybara/cucumber'

  # in features/support/env.rb
  require 'selenium/webdriver'

  Capybara.default_driver = :selenium

  # we need a firefox extension to start intercepting javascript errors before the page
  # scripts load
  Capybara.register_driver :selenium do |app|
    profile = Selenium::WebDriver::Firefox::Profile.new
    Capybara::Selenium::Driver.new app, :profile => profile
  end


  Capybara.default_wait_time = 10
