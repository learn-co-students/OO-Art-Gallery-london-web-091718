class Artist

  attr_reader :name

  @@all = []

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

# Get a list of all artists
  def self.all
    @@all
  end

# Get a list of all the paintings by a specific artists
  def all_paintings_by_artist
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

# Get a list of all the galleries that a specific artist has paintings in
  def all_galleries_by_artist
    all_paintings_by_artist.map do |painting|
      painting.gallery
    end
  end

# Get a list of all cities that contain galleries that a specific artist has paintings in
  def all_cities_by_artist
    all_galleries_by_artist.map do |gallery|
      gallery.city
    end
  end

# Find the average years of experience of all artists
  def self.average_years_active
    sum = 0
    self.all.map do |artist|
    sum += artist.years_active
  end
    sum / self.all.length
  end
end
