require_relative '../config/environment.rb'
require 'pry'

howard = User.new("Howard", 37)
lidian = User.new("Lidian", 22)
grayson = User.new("Grayson", 24)
york = User.new("York", 21)
granny = User.new("Granny", 96)

gorgeous_mansion = Listing.new("NYC", "Soooo gorgeous!")
gorgeous_house = Listing.new("Ohio", "Soooo meh!")
horrible_rathole = Listing.new("New Zealand", "Soooo weaome!")
tiny_house = Listing.new("NYC", "Soooo small!")

howard.make_reservation(gorgeous_mansion, 5)
howard.make_reservation(tiny_house, 6)
howard.make_reservation(tiny_house, 3)
howard.make_reservation(horrible_rathole, 7)
howard.make_reservation(horrible_rathole, 8)
howard.make_reservation(tiny_house, 4)
howard.make_reservation(gorgeous_mansion, 2)
lidian.make_reservation(gorgeous_mansion, 2)
grayson.make_reservation(tiny_house, 4)
york.make_reservation(tiny_house, 2)
lidian.make_reservation(tiny_house, 3)
grayson.make_reservation(gorgeous_mansion, 2)
york.make_reservation(tiny_house, 1)
granny.make_reservation(tiny_house, 22)

Pry.start
