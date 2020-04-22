require 'pry'

class Person 
    def initialize(name,bank_account=25,happiness=8,hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def happiness=(happiness)
        @happiness = happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
    end

    def hygiene=(hygiene)
        @hygiene = hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def happy?
        if happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(money)
        @bank_account += money
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene=(@hygiene + 4)
        # binding.pry
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    # def work_out
    #     @happiness += 2
    #     @hygiene -= 3
    #     return "♪ another one bites the dust ♫"
    # end
    # binding.pry
end