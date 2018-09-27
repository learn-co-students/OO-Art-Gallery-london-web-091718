class Painting

  @@all=[]


  attr_reader :title, :style

  def initialize(title, style)
    @title = title
    @style = style
    @@all << self
  end

  def artist
    Artist.all.select {|artist| artist if  artist.paintings.include?(self)}
  end

  def gallery
    Gallery.all.select {|gallery| gallery if  gallery.paintings.include?(self)}
  end


  def assign_artist(artist_instance)
    #self.artist=artist_instance
    artist_instance.paintings << self
  end

  def self.styles
    Painting.all.map{|painting| painting.style}.uniq
  end

  def assign_gallery(gallery_instance)
  #  self.gallery=gallery_instance
    gallery_instance.paintings << self
  end

  def self.all
    @@all
  end

end#class
