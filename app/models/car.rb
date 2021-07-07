class Car

  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic)

    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self

  end

  def self.all
    @@all
  end

  def self.classifications
      all.map { |car| car.classification}
  end

  def self.mechanics
        all.map { |car| car.mechanic}.uniq
  end

# try again later
  def self.mechanic_classification_skills

      all.each do |car|
        if car.classification == car.mechanic.specialty
        end
      end

  end

end
