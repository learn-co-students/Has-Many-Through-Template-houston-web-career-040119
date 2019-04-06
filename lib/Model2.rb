#class for Model2 goes here
#Feel free to change the name of the class
class Magazine
    attr_accessor :name 
    @@all = []

    def initialize(name)
        self.name = name 
        @@all << self 
    end

    def self.all
        @@all  
    end


    def subscriptions
        Subscription.all.select do |subscription|
            subscription.magazine == self 
        end
    end

    def subscribers
        subscriptions.map do |subscription|
            subscription.person 
        end 
    end
end
