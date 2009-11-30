# Sets up the Rails environment for Cucumber
ENV["RAILS_ENV"] ||= "cucumber"

$: << File.expand_path(File.dirname(__FILE__) + "/../../vendor/plugins/steam/lib")
require 'steam'

require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')

browser = Steam::Browser::HtmlUnit.new
World do
  Steam::Session::Rails.new(browser)
end

