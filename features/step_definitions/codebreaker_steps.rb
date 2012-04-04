$LOAD_PATH << File.join( File.dirname(File.expand_path(__FILE__)), "../../lib/codebreaker")

puts $LOAD_PATH
#    require File.expand_path(File.dirname(__FILE__) + '../../../lib/codebreaker/game.rb')
#require File.expand_path(File.dirname(__FILE__) + '../../../lib/codebreaker/output.rb')

require 'game'
require 'output'

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

Given /^the secret code is "([^"]*)"$/ do |secret|
  game = Codebreaker::Game.new(STDOUT)
  game.start(secret)
end
When /^I guess "([^"]*)"$/ do |arg|
  pending
end
Then /^the mark should be "([^"]*)"$/ do |arg|
  pending
end
