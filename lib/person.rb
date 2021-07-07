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
        #more efficient way to write something like "happy?" method
        self.hygiene > 7? true:false
        # if hygiene > 7
        #     return true
        # else
        #     return false
        # end
    end

    def get_paid(money)
        @bank_account += money
        return "all about the benjamins"
    end
    def take_bath
        # see "take_bath" method for more streamlined way to express this
        self.hygiene=(@hygiene + 4)
        # binding.pry
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end
    # binding.pry
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        if topic == "politics"
            friend.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end

    end
end