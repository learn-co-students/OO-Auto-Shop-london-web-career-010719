class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    #get a list of all owners
    @@all
  end

  def cars
    #get a list of all the cars that a specific owner has
    Car.all.select{|car| car.car_owner == self}
  end

  def mechanics
    #get a list of all the mechanics that a specific owner goes to
    cars.map {|car| car.mechanic}
  end

  def self.average_car_owned
    all.inject(0) {|sum, car| sum + car.cars} / all.count
  end

end
