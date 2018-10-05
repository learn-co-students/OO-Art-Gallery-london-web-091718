require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

louise = Artist.new("Louise", 10)
claire = Artist.new("Claire", 15)

fitz = Gallery.new("Fitzwilliam Mueseum", "Cambridge")
barbican = Gallery.new("Barbican", "London")

church = Painting.new("A walk through a church", "impressionist", louise, fitz)
animation = Painting.new("Halloween night", "modern", claire, barbican)



binding.pry
