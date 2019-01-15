require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


car_owner1 = CarOwner.new("Amy")
car_owner2 = CarOwner.new("Billy")
car_owner3 = CarOwner.new("Cathy")

mechanic1 = Mechanic.new("Peter", "antique")
mechanic2 = Mechanic.new("Tom", "exotic")
mechanic3 = Mechanic.new("Idoia", "clunker")

car1 = Car.new("Hy", "a1", "antique")
car2 = Car.new("Fo", "b2", "clunker")
car3 = Car.new("Me", "c3", "exotic")
car4 = Car.new("Au", "d5", "exotic")

car1.car_owner = car_owner1
car2.car_owner = car_owner2
car3.car_owner = car_owner3
car4.car_owner = car_owner1

car1.mechanic = mechanic1
car2.mechanic = mechanic3
car3.mechanic = mechanic1
car4.mechanic = mechanic2

binding.pry
