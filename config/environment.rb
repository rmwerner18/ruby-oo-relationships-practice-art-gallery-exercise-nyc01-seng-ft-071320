require 'pry'
require_relative '../app/models/artist.rb'
require_relative '../app/models/gallery.rb'
require_relative '../app/models/painting.rb'


monet = Artist.new("Monet", 30)
davinci = Artist.new("daVinci", 50)
vangogh = Artist.new("van Gogh", 7)

louvre = Gallery.new("Louvre", "Paris")
umma = Gallery.new("UMMA", "Ann Arbor")
dia = Gallery.new("DIA", "Detroit")
rodin = Gallery.new("Rodin", "Paris")

mona_lisa = Painting.new("Mona Lisa", 1000000000, davinci, louvre)
starry_night = Painting.new("Starry Night", 900000000, vangogh, dia)
sunrise = Painting.new("Sunrise", 750000000, monet, umma)
self_portrait = Painting.new("Self Portrait", 600000000, vangogh, louvre)
another_self_portrait = Painting.new("Another Self Portrait", 400000000, vangogh, louvre)
another_sunrise =  Painting.new("Another Sunrise", 40000000, vangogh, rodin)



binding.pry