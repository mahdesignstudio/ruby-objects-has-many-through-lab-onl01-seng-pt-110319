class Doctor

attr_reader :name

@@all = [ ]

def initialize(name)
  @name = name 
  @@all << self 
end 

def new_appointment(name,date)
  Patient.new(name, self, date)
end 

def appointments 


def self.all 
  @@all
end 





end 