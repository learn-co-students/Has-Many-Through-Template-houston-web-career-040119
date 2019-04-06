#class for Model1 goes here
#Feel free to change the name of the class
class Subscription
    attr_accessor :magazine, :person
    @@all = []

    def initialize(magazine,person)
        self.magazine = magazine 
        self.person = person 
        @@all << self 
    end

    def self.all 
        @@all 
    end
end
