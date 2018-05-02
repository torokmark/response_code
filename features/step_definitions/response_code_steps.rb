require 'response_code'

When(/^I call a method with (\w+)$/) do |name|
  @result = ResponseCode.send(name.to_sym)
end

Then(/^it should give me (\d+)$/) do |expected|
  #expect(@result).to eq expected.to_i
end
