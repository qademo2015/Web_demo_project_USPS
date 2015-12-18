require 'bundler/setup'
Bundler.require(:default)
require 'yaml'

require_relative '../lib/env_config'
require_relative '../lib/aux_methods'
require_relative '../page_model/base_page'
require_relative '../page_model/pages'
Dir['../page_model/*.rb'].each { |file| require file }

include AuxModule

# Initial setup
VALID_ENVIRONMENTS = %w{dev qa staging production}  # array of supported environments
VALID_BROWSERS = %w{chrome firefox safari}          # array of supported browsers

# Default settings
ENV['TEST_ENV'] ||= 'qa'  # default env. (list of supported env. - 'dev', 'qa', 'staging', 'production')
ENV['TEST_BROWSER'] ||= 'chrome'  # default browser (list of supported browsers - 'chrome', 'firefox', 'safari')
DEFAULT_TIMEOUT = 5 # in seconds

# Deleting all screenshots from previous run (if any)
FileUtils.rm Dir['screenshot*.png']

# Loading configuration parameters and test data into hash
$env_config = EnvConfig.load(ENV['TEST_ENV'], 'env.yml')

def create_instance
  if VALID_ENVIRONMENTS.include?(ENV['TEST_ENV']) && VALID_BROWSERS.include?(ENV['TEST_BROWSER'])
    @browser = Selenium::WebDriver.for ENV['TEST_BROWSER'].to_sym
    @wait = Selenium::WebDriver::Wait.new(:timeout => 5)
    @browser.manage.window.resize_to(1024, 768)
    @browser.manage.timeouts.implicit_wait = DEFAULT_TIMEOUT  # specify implicit wait for element to be present (seconds)
    @browser.manage.timeouts.page_load = 20 # specify implicit wait for page to be loaded (seconds)
  else
    raise 'Wrong browser or non-supported environment provided'
  end
end

def usps
  @usps = Pages.new @browser
end
