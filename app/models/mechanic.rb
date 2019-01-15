class Mechanic
  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty

  self.class.all << self
end

def self.all
  @@all
end

def speciality?(car)
  specialty == car.classification
end

def work_on(car)
  if speciality?(car)
    car.mechanic = self
  else
    puts "you do not have the skills to work on this vehicle."
  end
end

def cars
  Car.all.select {|car| car.mechanic == self}
end

def car_owners
  cars.map {|car| car.owner }.uniq
end

def car_owners_names
  car_owners.map {|owner| owner.name}
end


end
