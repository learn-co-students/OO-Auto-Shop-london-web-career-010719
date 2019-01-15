class CarOwner
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self
  end

  def self.all
    @@all
  end

  def aquire_car(car)
    car.owner = self
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def car_count
    cars.length
  end

  def mechanics
    cars.map {|car| car.mechanic }.uniq
  end

  def self.average_cars_owned
    all.inject(0) {|sum, owner| sum + owner.car_count }.to_f / all.length
  end
end
