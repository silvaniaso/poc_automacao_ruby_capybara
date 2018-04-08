require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara/rspec'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require_relative 'page_helper.rb'
require 'capybara/cucumber'
require 'special_char_remover'
require_relative 'helper.rb'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

HEADLESS = ENV['HEADLESS']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + 
"/data/#{ENVIRONMENT_TYPE}.yml")

Capybara.register_driver :selenium do |app|
if HEADLESS.eql?('com_headless')
    Capybara::Selenium::Driver.new(app,
    :browser => :chrome,
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
        'args' => [ "headless", "window-size=1280x720", "disable-gpu"]
      }
    )
  )
elsif HEADLESS.eql?('sem_headless')
    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => {'args' => ['--disable-infobars',
                                           'window-size=1600,1024']}
        )
    )
end
end

Capybara.configure do |config|
    config.default_driver = :selenium
    @url = config.app_host = CONFIG['url_cadastro']
end

Capybara.default_max_wait_time = 5