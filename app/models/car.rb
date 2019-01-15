class Car

  attr_accessor :car_owner
  attr_reader :make, :model, :classification, :mechanic
  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def mechanic=(mechanic)
    @mechanic = mechanic if mechanic.specialty == self.classification
  end

  def self.classifications
    @@all.map {|car| car.classification}.uniq
  end

  def mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end


end
