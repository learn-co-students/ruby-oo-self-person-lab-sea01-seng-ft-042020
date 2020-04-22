# your code goes here
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    NAME = ""

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happy)
        @happiness = greater_lesser(happy)
    end

    def hygiene=(hygiene)
        @hygiene = greater_lesser(hygiene)
    end

    def happy?
        greater_seven(@happiness)
    end

    def clean?
        greater_seven(@hygiene)
    end

    def get_paid(salary)
        @bank_account += salary

        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)

        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        self.hygiene=(@hygiene)
        
        self.happiness_call(2)

        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness_call(3)

        friend.happiness_call(3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def happiness_call(amount)
        @happiness += amount
        self.happiness=(@happiness)
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness_call(-2)
            friend.happiness_call(-2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness_call(1)
            friend.happiness_call(1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

    private

    def greater_lesser(inst_val)
        if inst_val > 10
            class_var = 10
        elsif inst_val < 0
            class_var = 0
        else
            class_var = inst_val
        end
    end

    def greater_seven(inst_val)
        if inst_val > 7
            TRUE
        else
            FALSE
        end
    end
end