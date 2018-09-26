require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

jane = Artist.new("jane", 3)
john = Artist.new("john", 1)

guggenheim = Gallery.new("guggenheim", "nyc")
tate = Gallery.new("tate", "london")

p1 = Painting.new("flower", "modernist", guggenheim, john)
p2 = Painting.new("jar", "baroque", tate, jane)

binding.pry
