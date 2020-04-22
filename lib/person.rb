require 'pry'

class Person 
    def initialize(name,bank_account=25,happiness=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
    end
    
    attr_reader :name, :happiness
    attr_accessor :bank_account

    def happiness=(happiness)
        if @happiness > 10
            binding.pry

            return nil
        end
    end
end
justin = Person.new("justin")
justin.happiness