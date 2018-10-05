require 'pry'
class Artist

  attr_reader :name, :years_active

  @@all = []


  def initialize(name, years_active)
    @name = name
    @years_active = years_active
    @@all << self
  end


  def self.all
    @@all

  end

  def paintings
    Painting.all.select {| painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end


  def self.average_years_of_experience
      self.all.map {|artist|
      artist.years_active}.inject(&:+) / self.all.count
  end

end

p "eof"
