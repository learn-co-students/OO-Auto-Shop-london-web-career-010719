class CarOwner

  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.car_owner == self}
  end


  def car_class
    self.cars.map {|car| car.classification}.uniq
  end

  def mechanics
    self.car_class.map {|car_class| Mechanic.all.find{|mechanic| mechanic.specialty == car_class}}
  end



end
