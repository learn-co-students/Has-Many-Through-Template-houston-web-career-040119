#class for Model3 goes here
#Feel free to change the name of the class
class Person
    attr_accessor :name, :age
    @@all = []

    def initialize(name,age)
        self.name = name 
        self.age = age 
        @@all << self 
    end

    def self.all
        @@all 
    end

    def subscriptions
        Subscription.all.select do |subscription|
            subscription.person == self 
        end
    end

    def magazines
        subscriptions.map do |subscription|
            subscription.magazine 
        end
    end
  
end
