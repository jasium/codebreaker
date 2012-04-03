
Given /^I am not yet playing$/ do
  @output = Codebreaker::Output.new
end

When /^I start a new game$/ do
  game = Codebreaker::Game.new(@output)
  game.start
end

Then /^I should see "([^"]*)"$/ do |message|
  @output.messages.should include(message)
end
