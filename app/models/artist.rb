class Artist

  attr_reader :name
  attr_accessor :paintings

  @@all=[]

  def initialize(name, years_active)
    @paintings = []
    @name = name
    @years_active = years_active
    @@all << self
  end

  def self.all
    @@all
  end

  def artists_paintings
    #paintings by this author
    Painting.all.select {|painting| painting if painting.name==self}
  end

  def galeries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galeries.map{|gallery| gallery.city}.uniq
  end

  def self.average_years_of_experience
    Artist.all.map {|artist| artist=artist.years_active}
    nums.reduce(:+)/a.size.to_f
    #to work on
  end

end#class
