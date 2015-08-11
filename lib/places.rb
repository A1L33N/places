class Place
  attr_reader :name, :description
  @@places = []
  def initialize(name, description)
    @name = name
    @description = description
  end

  def self.all
    @@places
  end

  def save
    @@places.push(self)
  end

end
