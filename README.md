## Requirements

This demo currently works with:

* Rails 5.2.6
* PostgreSQL

## Installation

1.  Clone the repository

    git clone https://github.com/AK-Praveen/Scrabble.git

3. Install dependencies

    bundle install

4. Initialize the database

    rails db:create 
    rails db:migrate 
		
		# I have created some sample data if you want you can seed it
    rails db:seed 

5. run application

    rails s

## What does it do?

The demo will perform the following steps:

1. Create new player
2. Create new game with players
3. Generate leader board for games
4. 
  * A member’s profile screen showing their
  * number of wins
  * number of losses
  * their average score
  * their highest score
	* when it was scored
	* Opponent Name
5. Interfaces to create and edit members’ details, such as name, contact number etc.

## Validation

1. Validation for Player creation
	* First Name, Last Name, Email - Required fields
	* Contact Number - Numericality and Minimum digits = 10, Maximum digits = 15
	* First Name - Unique
2. Validation for Match Creation
	* Need to enter Player details and Score Which is required

## Security

1. For security I have added csrf

## Sample Images of the application

https://drive.google.com/drive/folders/1bya0Zyg8noqoLJvVgKhEwO6nVTkr2rp9?usp=sharing
