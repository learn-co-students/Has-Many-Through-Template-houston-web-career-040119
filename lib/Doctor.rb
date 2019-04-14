#class for Model1 goes here
#Feel free to change the name of the class
class Doctor
@@all=[]
attr_accessor :name , :department , :cost

def initialize(name, department, cost)
  @name = name
  @department = department
  @cost = cost
  @@all << self

end

def self.all
@@all
end

def appointments
  Appointment.all.select do |app|
    app.doctor == self
  end

end


def patients  #takes input of a particualr doctor and returns all instances of the Patience for that particular doctor
  # Patient.all.select do |patient|
  # Appointment.doctor  == doctor
  self.appointments.map do |appointment|
    appointment.patient
  end


end



end
