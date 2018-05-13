require 'response_code/aborted'

When(/^I call a method in Aborted with (\w+)$/) do |name|
  @result = ResponseCode::Aborted.send(name.to_sym)
end

Then(/^it should give me (\d+) from Aborted$/) do |expected|
  expect(@result).to eq expected.to_i
end

When(/^I call Aborted.lookup with (\d+)$/) do |code|
  @name = ResponseCode::Aborted.lookup(code)
end

Then(/^it should return me (\w+) from Aborted$/) do |expected|
  expect(@name.to_s).to eq expected
end

