# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create([
  {title: 'Sequence', description: 'Fun group game', number_of_players: 12},
  {title: 'Risk', description: 'Not a game for weak frendships', number_of_players: 4},
  {title: 'Ticket To Ride', description: 'Fun family game', number_of_players: 6},
  {title: 'Settlers of Catan', description: 'Just fun', number_of_players: 5}
])