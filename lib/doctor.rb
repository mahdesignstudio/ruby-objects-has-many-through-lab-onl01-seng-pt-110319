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

def new_appointment(patient,date)
  Patient.new(patient, self, date)
end 

def appointments 
  Appointment.all.select {|appoinment| appointment.doctor == self }
end 







end 