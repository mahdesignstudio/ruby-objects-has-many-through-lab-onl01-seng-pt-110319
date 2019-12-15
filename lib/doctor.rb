class Doctor

attr_reader :name

@@all = [ ]

def initialize(name)
  @name = name 
  @@all << self 
end 

def self.all 
  @@all
end 

def new_appointment(name,date)
  Patient.new(name, self, date)
end 

def appointments 
  Appointment.all.select {|appoinment| appointment.doctor == self }
end 







end 