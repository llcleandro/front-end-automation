require "Capybara"
require "Capybara/cucumber"
require "cucumber"
require "rspec"
require 'webdrivers'
require 'pry'
require 'capybara/accessible'
require 'site_prism'
require 'yaml'

## Environment definitions (BROWSER=firefox / without parameter chrome)
case ENV['BROWSER']
	when 'firefox'
		# using firefox
		DRIVER = :firefox
		Capybara.register_driver :firefox do |app|
			Capybara::Selenium::Driver.new(app, :browser => :firefox)
		end		
	else
		# using chrome
		DRIVER = :chrome
		Capybara.register_driver :chrome do |app|
			Capybara::Selenium::Driver.new(app, :browser => :chrome)
		end
end

Capybara.default_driver = DRIVER
Capybara.default_max_wait_time = 20

## Fixtures
DEFAULT_DATA = YAML.load_file('./config/default_data.yml')
ENVIRONMENT = YAML.load_file('./config/environment.yml')



