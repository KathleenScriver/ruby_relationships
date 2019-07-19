class SocialMedia
  attr_accessor :name, :color

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, color)
    @name = name
    @color = color
    @@all << self
  end
end
