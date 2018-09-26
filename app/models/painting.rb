class Painting
#join class = SSoT
  attr_reader :title, :style, :gallery, :artist

  @@all = []

  def initialize(title, style, gallery, artist)
    @title = title
    @style = style
    @gallery = gallery
    @artist = artist
    @@all << self
  end

#- Get a list of all paintings
  def self.all
    @@all
  end

# - Get a list of all painting styles (a style should not appear more than once in the list)
  def painting_style
    self.all.map do |painting|
      painting.style.uniq
    end
  end

  # def all_artist_names
  #   Artist.all.map do |artist|
  #     artist.name
  #   end
  # end
end
