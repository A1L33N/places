class Place
  attr_reader :name, :description
  def initialize(name, description)
    @name = name
    @description = description
  end

  def self.all
    []
  end

end
