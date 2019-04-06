require_relative "lib/Model1.rb"
require_relative "lib/Model2.rb"
require_relative "lib/Model3.rb"
require 'pry'

person1 = Person.new("Jacob",28)
person2 = Person.new("Susan",32)
person3 = Person.new("Sam",40)

magazine1 = Magazine.new("Science")
magazine2 = Magazine.new("Nature")
magazine3 = Magazine.new("Typhoons Today")

Subscription.new(magazine1,person3)
Subscription.new(magazine2,person2)
Subscription.new(magazine3,person1)
Subscription.new(magazine1,person2)
Subscription.new(magazine3,person3)

binding.pry
0

# [1] pry(main)> person1.magazines
# => [#<Magazine:0x007f8842a763c8 @name="Typhoons Today">]
# [2] pry(main)> person2.magazines
# => [#<Magazine:0x007f8842a76418 @name="Nature">,
#  #<Magazine:0x007f8842a76468 @name="Science">]
# [3] pry(main)> person3.magazines
# => [#<Magazine:0x007f8842a76468 @name="Science">,
#  #<Magazine:0x007f8842a763c8 @name="Typhoons Today">]
# [4] pry(main)> magazine1.subscribers
# => [#<Person:0x007f8842a764b8 @age=40, @name="Sam">,
#  #<Person:0x007f8842a76530 @age=32, @name="Susan">]
# [5] pry(main)> magazine2.subscribers
# => [#<Person:0x007f8842a76530 @age=32, @name="Susan">]
# [6] pry(main)> magazine3.subscribers
# => [#<Person:0x007f8842a76580 @age=28, @name="Jacob">,
#  #<Person:0x007f8842a764b8 @age=40, @name="Sam">]

