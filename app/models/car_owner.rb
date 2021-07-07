class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select { |car| car.owner == self}
  end

  def mechanics
      cars.map { |car| car.mechanic}.uniq
  end

  def self.average_num_cars
    #average amount of cars per amount of owners
        Car.all.count.to_f/self.all.count.to_f
  end


end
