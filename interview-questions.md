# ASSESSMENT 6: Interview Practice Questions
Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn.

1. In a model called Animal that has_many Sightings, what is the name of the foreign key? Would the foreign key be part of the Animal model or the Sightings model?

  Your answer:  The foreign key should be called animal_id, and it is within Sightings.

  Researched answer: The foreign key should be called animal_id as an integer datatype, and it should be a field within Sightings.



2. Which routes must always be passed params and why?

  Your answer: Routes that have arguments within their path always need an argument or they will throw an error.

  Researched answer:Routes that have arguments within their pathway and if no argument does not have a pathway will throw an error.



3. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess".

  Your answer: get '/game/:guess' => 'main'



4. Name three rails generator commands. What is created by each?

  Your answer:
  rails generate controller (name) - generates a controller for a specific page
  rails generate model (name) (field:datatype) - creates a table with the specified fields.
  rails generate source (name) - generates a table but also includes several inbuilt pathways that are useful for other purposes.


  Researched answer:
  rails generate controller (name) - generates a controller for a specific page
  rails generate model (name) (field:datatype) - creates a table with the specified fields.
  rails generate source (name) - generates a table but also includes several inbuilt pathways that are useful for other purposes.
  rails generate scaffold (name) (field:datatype) - generates the model, database migration, controller, views, and test suite at once.



5. Consider the Rails routes below. Describe the responsibility of each route.

/users        method="GET" - Obtains a list of all users

/users/1      method="GET" - Obtains the attribute of first user.

/users/new    method="GET" - returns an html form for creating a new photo

/users/       method="POST" - creates a new user.

/users/1      method="PUT" - replaces existing data for the first user

/users/1      method="DELETE" - deletes the first user within the users table.
