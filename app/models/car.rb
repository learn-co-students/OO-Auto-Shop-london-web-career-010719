class Car
  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic

  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification

    self.class.all << self
  end

  def suitable_mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == classification}
  end

  def self.classifications
    all.map {|car| car.classification}.uniq
  end

  def self.all
    @@all
  end



end
