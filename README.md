# Object Relations Assessment

For this assignment, we'll be working with a Yelp-style domain. We have three models - Restaurant, Customer, and Review.
For our purposes, a Restaurant has many reviews, a Customer has many reviews, and Restaurant - Customer is a many to many relationship.

If you are not sketching out your domain, and thinking about single source of truth,
you are doing it wrong :(

## Topics

+ Classes vs Instances
+ Variable Scope ( Class, Instance, Local )
+ Object Relationships
+ Arrays and Array Methods
+ Class Methods

## Instructions

Build the following methods on the customer class
+ Customer.all
  + should return all of the customers
+ Customer.find_by_name(name)
  + given a string of a full name, returns the first customer whose full name matches
+ Customer.find_all_by_first_name(name)
  + given a string of a first name, returns an array containing all customers with that first name
+ Customer#add_review
  + given some content and a restaurant, creates a new review and associates it with that customer and that restaurant

Build out the following methods on the Review class

+ Review.all
  + returns all of the reviews
+ Review#customer
  + returns the customer for that given review
+ Review#restaurant
  + returns the restaurant for that given review

Build out the following methods on the restaurant class

+ Restaurant.all
  + returns an array of all restaurants
+ Restaurant.find_by_name(name)
  + given a string of restaurant name, returns the first restaurant that matches
+ Restaurant#reviews
  + returns an array of all reviews for that restaurant
+ Restaurant#customers
  + should return all of the customers who have written reviews of that restaurant.
