class Artist
  @@all = []

  attr_reader :name, :years_active

  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select { |p| p.artist == self }
  end

    def galleries
      self.paintings.map { |p| p.gallery }
    end

    def cities
      self.galleries.map { |g| g.city }
    end

    def self.average
      self.all.sum {|a| a.years_active} / self.all.size
    end
end
