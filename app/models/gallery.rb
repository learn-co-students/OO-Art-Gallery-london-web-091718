class Gallery

  @@all = []

  attr_reader :name, :city

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def self.cities
    self.all.map { |g| g.city }.uniq
  end

  def artists
    Painting.all.select { |p| p.gallery == self }.map {|p| p.artist }.uniq
  end

  def artist_names
    artists.map { |a| a.name }.uniq
  end

  def total_experience
    Painting.all.select { |p| p.gallery == self }.sum {|p| p.artist.!!!years_active}
  end

end
