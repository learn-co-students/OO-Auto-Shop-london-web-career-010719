class Car

  attr_accessor :car_owner
  attr_reader :make, :model, :classification, :mechanic

  @@all =[]

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map {|car| car.classification}.uniq
  end

  def mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

  def mechanic=(new_mechanic)
    if new_mechanic.specialty != self.classification
      puts 'Wrong type'
    else
      @mechanic = new_mechanic
    end
  end
end
