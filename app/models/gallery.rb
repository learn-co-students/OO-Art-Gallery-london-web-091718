class Gallery
@@all=[]
  attr_reader :name, :city
  attr_accessor :paintings
def initialize(name, city)
  @paintings=[]
  @name = name
  @city = city
  @@all<<self
end

def self.all
  @@all
end

def self.citities
  @@all.map {|gallery| gallery.city}.uniq
end


def artists
  Painting.all.map {|painting| painting.artist if painting.gallery==self}.uniq
end

def artist_names
  artists.map {|artist| artist.name}
end

def combined_experience
  artists.map{|artist| artist.years_active}.reduce(:+)
end




end#class
