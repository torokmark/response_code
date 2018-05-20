require 'response_code/aborted'
require 'response_code/spring_framework'
require 'response_code/twitter'
require 'response_code/microsoft'
require 'response_code/esri'
require 'response_code/apache_web_server'
require 'response_code/pantheon'
require 'response_code/signal'
require 'response_code/iis'
require 'response_code/nginx'
require 'response_code/cloudflare'

When(/^I call a method in (\w+) with (\w+)$/) do |module_name, name|
  @result = Object.const_get("ResponseCode::#{ module_name }").send(name.to_sym)
end

Then(/^it should give me (\d+) from (\w+)$/) do |expected, module_name |
  expect(@result).to eq expected.to_i
end

When(/^I call (\w+) lookup with (\d+)$/) do |module_name, code|
  @name = Object.const_get("ResponseCode::#{ module_name }").lookup(code)
end

Then(/^it should return me (\w+) from (\w+)$/) do |expected, module_name|
  expect(@name.to_s).to eq expected
end

