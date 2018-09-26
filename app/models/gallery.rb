class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

# Get a list of all galleries
  def self.all
    @@all
  end

# Get a list of all cities that have a gallery. A city should not appear more than once in the list.
  def all_cities
    self.all.map do |gallery|
      gallery.city.uniq
    end
  end

# Get a list of artists that have paintings at a specific gallery
  def all_artists_by_gallery
    paintings = Painting.all.select { |painting|  painting.gallery == self }
    # paintings.map { |painting| painting.artist }
  end

# Get a list of the names of artists that have paintings at a specific gallery
  def all_artist_names_by_gallery
    all_artists_by_gallery.map do |artist|
      # artist.name == Painting.artist.name
      artist.name
    end
  end

# Get the combined years of experience of all artists at a specific gallery
  def total_artist_experience
    sum = 0
    all_artists_by_gallery.map do |artist|
      artist.years_active == Painting.artist.years_active
      sum += artist.years_active
    end
  end

end
