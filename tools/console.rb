require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

joey = CarOwner.new("Joey")
ben = CarOwner.new("Ben")
jas = CarOwner.new("Jasmine")
darc = CarOwner.new("Darcey")

jay = Mechanic.new("Jay", "Old")
brad = Mechanic.new("Brad", "New")
hugo = Mechanic.new("Hugo", "Classic")
fred = Mechanic.new("Fred", "Bangers")

car1 = Car.new("BMW", "X3", "New")
car2 = Car.new("BMW", "X5", "Old")
car3 = Car.new("Ferrari", "Fastcar", "New")
car4 = Car.new("Fiat", "Punto", "Old")

car1.car_owner = joey
car2.car_owner = joey
car3.car_owner = darc
car4.car_owner = ben

binding.pry
