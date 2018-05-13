require 'response_code'

When(/^I call a method with (\w+)$/) do |name|
  @result = ResponseCode.send(name.to_sym)
end

Then(/^it should give me (\d+)$/) do |expected|
  expect(@result).to eq expected.to_i
end

When(/^I call lookup with (\d+)$/) do |code|
  @name = ResponseCode.lookup(code)
end

Then(/^it should return me (\w+)$/) do |expected|
  expect(@name.to_s).to eq expected
end
