module Codebreaker
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
      mark = ""
      (0..3).each do |index|
        mark << '+' if exact_match?(guess,index)
      end
      (0..3).each do |index|
        mark << '-' if number_match?(guess,index)
      end
      @output.puts mark
  end

  def exact_match?(guess,index)
    @secret[index] == guess[index]
  end

  def number_match?(guess,index)
    @secret.include?(guess[index]) && !exact_match?(guess,index)
  end
end
end