require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

car_owner1 = CarOwner.new("jess")
car_owner2 = CarOwner.new("jill")
car_owner3 = CarOwner.new("Tilly")

# name , specialty
mechanic1 = Mechanic.new("bob","green")
mechanic2 = Mechanic.new("Ned","white")
mechanic3 = Mechanic.new("Paul","black")

# make, model, classification, owner, mechanic
car1 = Car.new("bmw","660","black",car_owner1,mechanic2)
car2 = Car.new("jeep","5756","green",car_owner1,mechanic2)
car3 = Car.new("ferrari","45673","orange",car_owner2,mechanic1)
car4 = Car.new("lincon","23456","silver",car_owner2,mechanic1)
car5 = Car.new("porche","9785446","white",car_owner3,mechanic3)



binding.pry
