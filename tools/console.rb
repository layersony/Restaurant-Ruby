require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


# Create Customer Instances
maingi = Customer.new("Maingi", "Mutunga")
billy = Customer.new("Billy", "Mwangi")
gladys = Customer.new("Gladys", "Ndichu")
brian = Customer.new("Brian", "Munene")
billyK = Customer.new("Billy", "Kemaro")
brian2 = Customer.new("Brian", "Munene")

# create Restaurant Instances
kilimanjaro = Restaurant.new("Kilimanjaro")
tamtam = Restaurant.new("Tamtam")
artcaffe = Restaurant.new("Artcaffe")
azuri = Restaurant.new("Azuri")
bigsquare = Restaurant.new("BigSquare")

# create Review Instances
review1 = Review.new(maingi, tamtam, 8)
review2 = Review.new(maingi, azuri, 5)
review3 = Review.new(gladys, artcaffe, 6)
review4 = Review.new(brian, bigsquare, 7)
review5 = Review.new(billy, azuri, 10)
review6 = Review.new(gladys, kilimanjaro, 7)
review7 = Review.new(maingi, azuri, 9)
review8 = Review.new(billyK, azuri, 1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line