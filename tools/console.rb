require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#==== Seed Data ====#
chris = CarOwner.new("Chris Camacho")
gisela = CarOwner.new("Gisela Velterop")
jeff = CarOwner.new("Jeff Banks")

c1 = Car.new("Nissan", "Micra", "Small City Car")
c2 = Car.new("Toyota", "Prius", "Sedan")
c3 = Car.new("Land Rover", "Discovery", "4x4")
c4 = Car.new("Range Rover", "Sport", "4x4")

m1 = Mechanic.new("Dave", "Sedan")
m2 = Mechanic.new("Greg", "4x4")
m3 = Mechanic.new("Bill", "Small City Car")

chris.aquire_car(c1)
gisela.aquire_car(c2)
jeff.aquire_car(c3)
chris.aquire_car(c4)

m3.work_on(c1)
m1.work_on(c2)
m2.work_on(c3)
m2.work_on(c4)

#===================#

binding.pry
