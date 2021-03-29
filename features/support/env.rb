require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"

require_relative "helpers"
require_relative "actions"

World(Helpers)
World(Actions)

Capybara.register_driver :selenium_chrome do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end

Capybara.configure do |config|
    # selenium    selenium_chrome   selenium_chrome_headless

    #config.default_driver = :selenium
    config.default_driver = :selenium_chrome
    #config.default_driver = :selenium_chrome_headless

    config.default_max_wait_time = 20

    #endereço do host a acessar
    config.app_host = "https://portal-admin-ptl-develop.nonprod.taginfraestrutura.com.br"

end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end