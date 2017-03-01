# We want to add the following methods to each of the classes
# An all method, where each object is added upon initialization of the object
# A find_by_name method for both the customer and the restaurant


# If you are not sketching out your domain, and thinking about single source of truth,
# you are doing it wrong :(

# Build the following methods on the customer class
  # Customer.all
    # should return all of the customers
  # Customer.find_by_name(name)
    # given a string of a full name, returns the first customer whose full name matches
  # Customer.find_all_by_first_name(name)
    # # given a string of a first name, returns an array containing all customers with that first name
  # Customer#add_review
    # given some content and a restaurant, creates a new review and associates it with that customer and that restaurant

  # Review.all
    # returns all of the reviews
  # Review#customer
    # returns the customer for that given review
  # Review#restaurant
    # returns the restaurant for that given review

  # Restaurant.all
    # returns an array of all restaurants
  # Restaurant.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
  # Restaurant#reviews
    # returns an array of all reviews for that restaurant
  # Restaurant#customers
    # should return all of the customers who have written reviews of that restaurant.
