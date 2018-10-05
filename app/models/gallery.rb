class Gallery

  attr_reader :name, :city

  @@all= []

  def initialize(name, city)
    @city = city
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    self.all.collect {|gallery| gallery.city}.uniq
  end

  def artist
    Painting.all.select {|painting| painting.gallery == self}.map {|painting| painting.artist}
  end

  def artist_name
    artist.map {|artist| artist.name}
  end

  def combined_years_of_experience
    artist.map {|artist| artist.years_active}.inject(&:+)
  end
end
