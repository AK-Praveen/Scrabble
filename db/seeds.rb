# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

players = [{first_name: "snow", last_name: "john", contact_number: "215333333409", email: "John.snow@yahoo.com"},
    {first_name: "board", last_name: "de", contact_number: "12153333335", email: "John.board@live.com"},
    {first_name: "Martin", last_name: "King", contact_number: "215335633336", email: "king.martin@gmail.com"},
    {first_name: "Mark", last_name: "Guptil", contact_number: "215334733337", email: "guptil.martin@gmail.com"},
    {first_name: "john", last_name: "snow", contact_number: "215333333348", email: "John.snow@yahoo.com"},
    {first_name: "King", last_name: "Guptil", contact_number: "215333563339", email: "guptil.martin@gmail.com"},
    {first_name: "Aaron", last_name: "Finch", contact_number: "215333335640", email: "aaron@gmail.com"},
    {first_name: "Marcus", last_name: "Stoinis", contact_number: "215333673341", email: "marcus@gmail.com"},
    {first_name: "De", last_name: "Kock", contact_number: "215333334632", email: "de@gmail.com"},
    {first_name: "Aidem", last_name: "Markram", contact_number: "215331233343", email: "aidem@gmail.com"},
    {first_name: "David", last_name: "Warner", contact_number: "215333331144", email: "david@gmail.com"},
    {first_name: "virat", last_name: "kholi", contact_number: "215333331145", email: "virat@gmail.com"}
    ]

Player.create(players)


game_1 = [{"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"10"} , "1"=>{"player_id"=>"2", "score"=>"1"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"20"} , "1"=>{"player_id"=>"3", "score"=>"10"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"30"} , "1"=>{"player_id"=>"4", "score"=>"20"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"40"} , "1"=>{"player_id"=>"5", "score"=>"30"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"50"} , "1"=>{"player_id"=>"6", "score"=>"40"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"60"} , "1"=>{"player_id"=>"7", "score"=>"50"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"70"} , "1"=>{"player_id"=>"8", "score"=>"60"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"80"} , "1"=>{"player_id"=>"9", "score"=>"70"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"90"} , "1"=>{"player_id"=>"10", "score"=>"80"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"100"} , "1"=>{"player_id"=>"11", "score"=>"90"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"1", "score"=>"110"} , "1"=>{"player_id"=>"12", "score"=>"100"}}}]

game_2 = [{"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"10"} , "1"=>{"player_id"=>"3", "score"=>"1"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"20"} , "1"=>{"player_id"=>"4", "score"=>"10"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"30"} , "1"=>{"player_id"=>"5", "score"=>"20"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"40"} , "1"=>{"player_id"=>"6", "score"=>"30"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"50"} , "1"=>{"player_id"=>"7", "score"=>"40"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"60"} , "1"=>{"player_id"=>"8", "score"=>"50"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"70"} , "1"=>{"player_id"=>"9", "score"=>"60"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"80"} , "1"=>{"player_id"=>"10", "score"=>"70"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"90"} , "1"=>{"player_id"=>"11", "score"=>"80"}}},
        {"matches_attributes"=> {"0"=>{"player_id"=>"2", "score"=>"100"} , "1"=>{"player_id"=>"12", "score"=>"90"}}}]

Game.create(game_1)
Game.create(game_2)
