# Object Relations Code Challenge - Restaurants

For this assignment, we'll be working with a Yelp-style domain.

We have three models: `Restaurant`, `Customer`, and `Review`.

For our purposes, a `Restaurant` has many `Reviews`, a `Customer` has many `Review`s, and a `Review` belongs to a `Customer` and to a `Restaurant`.

`Restaurant` - `Customer` is a many to many relationship.

**Note**: You should draw your domain on paper or on a whiteboard _before you start coding_. Remember to identify a single source of truth for your data.

## Topics

- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

## Instructions

Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a console that you can use to test your code. To enter a console session, run `ruby tools/console.rb` from the command line. You'll be able to test out the methods that you write here. Add code to the `tools/console.rb` file to define variables and create sample instances of your objects.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Do your best to follow Ruby best practices. For example, use higher-level array methods such as `map`, `select`, and `find` when appropriate in place of `each`. When you encounter duplicated logic, you can extract it into a shared helper method.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Some of the methods listed are provided to you in the starter code. You should check that they work correctly, and that you understand them.

### Initializers, Readers, and Writers

#### Customer

- `Customer#initialize`
  - Customer should be initialized with a given name and family name, both strings (i.e., first and last name, like George Washington)"
- `Customer#given_name`
  - returns the customer's given name
  - should be able to change after the customer is created
- `Customer#family_name`
  - returns the customer's family name
  - should be able to change after the customer is created
- `Customer#full_name`
  - returns the full name of the customer, with the given name and the family name concatenated, Western style.
- `Customer.all`
  - returns **all** of the customer instances

#### Restaurant

- `Restaurant#initialize`
  - Restaurants should be initialized with a name, as a string
- `Restaurant#name`
  - returns the restaurant's name
  - should not be able to change after the restaurant is created

#### Review

- `Review#initialize`
  - Reviews should be initialized with a customer, restaurant, rating (a number)
- `Review#rating`
  - returns the rating for a restaurant.
- `Review.all`
  - returns all of the reviews

### Object Relationship Methods

#### Review

- `Review#customer`
  - returns the customer object for that review
  - Once a review is created, should not be able to change the customer
- `Review#restaurant`
  - returns the restaurant object for that given review
  - Once a review is created, should not be able to change the restaurant

#### Restaurant

- `Restaurant#reviews`
  - returns an array of all reviews for that restaurant
- `Restaurant#customers`
  - Returns a **unique** list of all customers who have reviewed a particular restaurant.

#### Customer

- `Customer#restaurants`
  - Returns a **unique** array of all restaurants a customer has reviewed
- `Customer#add_review(restaurant, rating)`
  - given a **restaurant object** and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.

### Aggregate and Association Methods

#### Customer

- `Customer#num_reviews`
  - Returns the total number of reviews that a customer has authored
- `Customer.find_by_name(name)`
  - given a string of a **full name**, returns the **first customer** whose full name matches
- `Customer.find_all_by_given_name(name)`
  - given a string of a given name, returns an **array** containing all customers with that given name

#### Restaurant

- `Restaurant#average_star_rating`
  - returns the average star rating for a restaurant based on its reviews
  - Reminder: you can calculate the average by adding up all the ratings and dividing by the number of ratings

## Rubric

### Build classes using OO Ruby Syntax

1. Class code has a syntax or runtime error. Code does not run at all, or exits with an error, or most Object-oriented deliverables are not implemented.
2. Code runs without error, some deliverables function correctly. May use the wrong syntax for class or instance methods, use variables in the wrong scope, or have duplicated methods.
3. Correct class syntax and logic for most deliverables. May be incomplete or missing a small number of deliverables. Methods might be duplicated, or might not use attr\_\* macros appropriately.
4. Correct class syntax and logic for all of the submitted code. Uses attr\_\* macros appropriately. Class and instance methods and variables have correct scope, no methods duplicated. Some deliverables might not be complete.
5. Correct class syntax and logic for all deliverables, all deliverables complete. Shared functionality factored out into helper methods. Appropriate use of attr\_\* macros.

### Model relationships using Ruby

1. Submitted code does not relate models to each other through methods or data.
2. Models relate to each other, but incompletely. Code might not use a single source of truth or store data on the wrong model. Code may be missing methods for accessing the related model.
3. Models relate to each other as specified in the instructions. Data is stored on the correct models. Methods built using relationships may be incomplete.
4. Models relate to each other with belongs_to and has_many relationships. Methods built using those relationships work, but may be inelegant or duplicative.
5. Models relate to each other with belongs_to, has_many, and has_many_through relationships.

### Solve problems with collections of data

1. Does not attempt to solve collections problems, or has syntax errors in collection code.
2. Collections methods have errors. May use the wrong iterator, have incorrect logic, or have more than two collections methods left unimplemented.
3. Collections methods work correctly, with one or two unimplemented or with errors. Code may not use the appropriate built in method for each problem, duplicate logic instead of using helper methods, or have non-functional lines.
4. All collections methods are implemented and function correctly. Most use appropriate higher-level built-in methods. May duplicate logic instead of using helper methods.
5. All collections methods implemented and function correctly, using appropriate higher-level built-in methods. Shared logic is factored out to helper methods.
