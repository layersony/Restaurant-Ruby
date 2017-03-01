class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    self.name=(name)
    @@all << self
    @reviews = []
  end

end
