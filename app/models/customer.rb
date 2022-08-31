class Customer
  attr_accessor :given_name, :family_name

  @@all = [] # stores all instances of customer

  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end

  def self.all
    @@all
  end

  def restaurants
    # Access all Reviews
    # Get all reviews authored by self
    # All restaurant self has reviewed
    Review.all.select do | review |
      review.customer == self
    end.map do |customerReview|
      customerReview.restaurant
    end.uniq
  end
  
  def add_review(restaurant, rating)
    Review.new(self, restaurant, rating)
  end

  def num_reviews
    # Access all the review
    # loop through the reviews and get list of self authored reviews
    # return total count or all reviews
    Review.all.select do | review |
      review.customer == self
    end.count
  end 

  def self.find_by_name(name)
    # use all variable (List of all customers)
    # loop over list
    # use customer.fullname to get required customer
    # return one customer
    self.all.find do | customer |
      customer.full_name == name
    end
  end

  def self.find_all_by_given_name(name)
    # use all variable (List of all customers)
    # loop over list
    # find all customers with given name
    # return all customers with given name
    self.all.find_all do | customer |
      customer.given_name == name
    end 

  end

end
