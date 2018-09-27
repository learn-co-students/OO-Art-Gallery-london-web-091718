require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



artist1=Artist.new("artist1",10)
artist2=Artist.new("artist2",20)
artist3=Artist.new("artist3",30)

painting1=Painting.new("title1", "cubism")
painting2=Painting.new("title2", "trianglism")
painting3=Painting.new("title3", "pentagonism")

gallery1=Gallery.new("gallery1","NY")
gallery2=Gallery.new("gallery2","Moscow")
gallery3=Gallery.new("gallery3","Paris")

painting1.assign_artist(artist1)
painting2.assign_artist(artist2)
painting3.assign_artist(artist3)

painting1.assign_gallery(gallery1)
painting2.assign_gallery(gallery2)
painting3.assign_gallery(gallery3)

binding.pry
