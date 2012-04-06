
require 'spec_helper'

module Codebreaker
  describe Game do
    let(:output) { double('output').as_null_object }
    let(:game)   { Game.new(output) }

    describe "#start" do
      it "sends a welcome message" do
        output.should_receive(:puts).with('Welcome to Codebreaker!')
        game.start('5555')
      end
      it "prompts for the first guess" do
        output.should_receive(:puts).with("Enter Guess:")
        game.start('5555')
      end
    end

    describe "#guess" do
      before do
        game.start('1234')
      end
    end
  end
end