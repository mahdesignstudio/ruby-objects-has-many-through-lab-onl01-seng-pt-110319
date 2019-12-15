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

def appointments 
  Appointment.all.select {|appoinment| appointment.doctor == self }
end 

def new_appointment(patient, date)
  Appointment.new(patient,date, self)
end 

def patients 
  appointments.map {|appointment| appointment.patient}
end 






end 