module Codebreaker
  class Game
    # @param output [Object]
    def initialize(out)
      @output = out
    end

    def new
    end

    def start
      @output.puts "Welcome to Codebreaker!"
      @output.puts "Enter guess:"
    end
  end
end