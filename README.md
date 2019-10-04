# Object Relations Code Challenge - Restaurants

For this assignment, we'll be working with a Yelp-style domain.

We have three models: `Restaurant`, `Customer`, and `Review`.

For our purposes, a `Restaurant` has many `Reviews`, a `Customer` has many `Review`s, and a `Review` belongs to a `Customer` and to a `Restaurant`.

`Restaurant` - `Customer` is a many to many relationship.

Note: it can be helpful to draw your domain on paper or on a whiteboard before you start coding. Remember to identify a single source of truth for your data.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

Build out all of the methods listed in the deliverables. The methods build on each other, so you should write the methods in order.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`. When you encounter duplicated logic, you can extract it into a shared helper method.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

### Basic Class Methods and Properties

- `Customer.all`
  - should return **all** of the customer instances
- `Restaurant.all`
  - returns an array of all restaurants
- `Review.all`
  - returns all of the reviews

### Associations and Aggregate Methods

#### Customer

- `Customer#add_review(restaurant, content, rating)`
  - given a **restaurant object**, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
- `Customer#num_reviews`
  - Returns the total number of reviews that a customer has authored
- `Customer#restaurants`
  - Returns a **unique** array of all restaurants a customer has reviewed

#### Restaurant

- `Restaurant#customers`
  - Returns a **unique** list of all customers who have reviewed a particular restaurant.
- `Restaurant#reviews`
  - returns an array of all reviews for that restaurant
- `Restaurant#average_star_rating`
  - returns the average star rating for a restaurant based on its reviews
- `Restaurant#longest_review`
  - returns the longest review content for a given restaurant

### Class Methods and Properties

#### Build the following methods on the `Customer` class

- `Customer.find_by_name(name)`
  - given a string of a **full name**, returns the **first customer** whose full name matches
- `Customer.find_all_by_first_name(name)`
  - given a string of a first name, returns an **array** containing all customers with that first name
- `Customer.all_names`
  - should return an **array** of all of the customer full names

#### Build out the following method on the `Restaurant` class

- `Restaurant.find_by_name(name)`
  - given a string of restaurant name, returns the first restaurant that matches

#### Build out the following methods on the `Review` class

- `Review#customer`
  - returns the customer object for that given review
  - Once a review is created, I should not be able to change the author
- `Review#restaurant`
  - returns the restaurant object for that given review
  - Once a review is created, I should not be able to change the restaurant
- `Review#rating`
  - returns the star rating for a restaurant. This should be an integer from 1-5
- `Review#content`
  - returns the review content, as a string, for a particular review
