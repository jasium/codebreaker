module Codebreaker

  require 'marker'
  class Game
    # @param output [Object]
    def initialize(out)
      @output = out
    end

    def start(secret)
      @secret = secret
      @output.puts "Welcome to Codebreaker!"
      @output.puts "Enter Guess:"
    end

    def guess(guess)
      marker = Marker.new(@secret)
      @output.puts '+' * marker.exact_match_count(guess) + '-' * marker.number_match_count(guess)
    end
  end
end