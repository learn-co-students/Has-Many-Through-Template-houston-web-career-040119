#class for Model3 goes here
#Feel free to change the name of the class
class Appointment ##joiner class

  @@all = []

attr_accessor :doctor ,:patient , :time, :place , :duration

  def initialize(doctor, patient, time, place, duration)
    @doctor = doctor
    @patient = patient
    @time = time
    @place = place
    @duration = duration
    @@all << self

  end

  def self.all
    @@all
  end



end
