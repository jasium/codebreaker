module Codebreaker
  class Output
    def initialize
      @messages = []
    end
    def messages
      @messages
    end

    def puts(message)
      @messages << message
    end
  end
end