require 'pry'
require_relative "lib/Doctor.rb"
require_relative "lib/Patient.rb"
require_relative "lib/Appointment.rb"

d1 = Doctor.new("Huang","orthopedics",100)
d2 = Doctor.new("Gadarzi","lung",150)
d3 = Doctor.new("Yao","heart",200)

p1 = Patient.new("Pancha","knee",1000,56)
p2 = Patient.new("Pancho","throat",500,34)
p3 = Patient.new("Bob","stroke",700,45)
p4 = Patient.new("Lisa","heart attack",900,59)

ap1 = Appointment.new(d1, p1, "1" , "5" , "15")
ap2 = Appointment.new(d2, p2, "9" , " 10" , "30 minutes")
ap3 = Appointment.new(d3, p3,"1pm","6 floor","20 minutes")
ap4 = Appointment.new(d3, p4, "1pm" , "7 floor" , "45 minutes")


binding.pry
0
