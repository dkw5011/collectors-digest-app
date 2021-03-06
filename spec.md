# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database 
        I'm inheriting ActiveRecord in my user and collectable model
- [x] Include more than one model class (e.g. User, Post, Category)
        I have two models a user and collectable model
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
        A user has many collectables
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
        A collectable belongs to a user
- [x] Include user accounts with unique login attribute (username or email)
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
        I have full CRUD in my collectables controller
- [x] Ensure that users can't modify content created by other users
        I have an authorized helper method that makes sure only the collectable that belongs to the user can be modified
- [x] Include user input validations
        Validation added to both user and collectable model
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
        Added sinatra-flash gem for error/success messages
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
