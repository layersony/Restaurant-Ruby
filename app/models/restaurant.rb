class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def reviews
    # Access all reviews
    # loop over all reviews then i check for reviews for specific restaurant
    # return all reviews for self restaurant -> list
    Review.all.select do | review |
      review.restaurant == self
    end
  end

  def customers
    # Access the reviews for a self restaurant
    # loop over reviews and get the customers SHOULD be unique
    self.reviews.map do | review |
      review.customer
    end.uniq

  end

  # helper method
  def find_all_ratings
    self.reviews.map do | review |
      review.rating
    end.reduce(:+) 
  end

  def average_star_rating
    # get all the ratings for self restaurant
    # divide all ratings by total number of reviews

    self.find_all_ratings / self.reviews.count
  end 

end
