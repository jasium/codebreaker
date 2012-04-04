$LOAD_PATH << File.join( File.dirname(File.expand_path(__FILE__)), "../../lib/codebreaker")

require 'game'
require 'output'

Before do
  @output = Codebreaker::Output.new
end

Given /^I am not yet playing$/ do
end
When /^I start a new game$/ do
  @game = Codebreaker::Game.new(@output)
  @game.start('1234')
end
Then /^I should see "([^"]*)"$/ do |message|
  @output.messages.should include(message)
end

Given /^the secret code is "([^"]*)"$/ do |secret|
  @game = Codebreaker::Game.new(@output)
  @game.start(secret)
end
When /^I guess "([^"]*)"$/ do |guess|
  @game.guess(guess)
end
Then /^the mark should be "([^"]*)"$/ do |mark|
  @output.messages.should include(mark)
end
