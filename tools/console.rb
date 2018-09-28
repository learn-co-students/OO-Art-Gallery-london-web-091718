require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

gallery1 = Gallery.new("Saatchi","London")
gallery2 = Gallery.new("Tate Modern","South London")
gallery3 = Gallery.new("William Morris","North London")
gallery4 = Gallery.new("Whitechapel","London")

artist1 = Artist.new("Duchamp",35)
artist2 = Artist.new("Dali",60)

painting1 = Painting.new("Cats","Realism", artist1, gallery2)
painting2 = Painting.new("Modern House","Modern", artist2, gallery1)
painting3 = Painting.new("Singing Dog","Surrealism", artist1, gallery1)
painting4 = Painting.new("Rain","Dadaism", artist2, gallery3)


binding.pry
