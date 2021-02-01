# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Game.create([
#   {title: "Sequence", description: "Sequence is a board and card game, the players compete to create rows, columns or diagonals of 5 connected checkers placed on the cards that the player has laid down.", number_of_players: 12},
#   {title: "Risk", description: "The goal is conquest of the world.", number_of_players: 6},
#   {title: "Ticket To Ride: Europe", description: "Ticket to Ride: Europe takes you on a new train adventure across Europe. From Edinburgh to Constantinople and from Lisbon to Moscow, you'll visit great cities of turn-of-the-century Europe", number_of_players: 5},
#   {title: "Pandamic", description: "In Pandemic, several virulent diseases have broken out simultaneously all over the world! The players are disease-fighting specialists whose mission is to treat disease hotspots while researching cures for each of four plagues before they get out of hand.", number_of_players: 4},
#   {title: "Wingspan", description: "Wingspan is a competitive, medium-weight, card-driven, engine-building board game from Stonemaier Games. It's designed by Elizabeth Hargrave and features over 170 birds illustrated by Natalia Rojas and Ana Maria Martinez.", number_of_players: 5 },
#   {title: "Gloomhaven", description: "Gloomhaven is a game of Euro-inspired tactical combat in a persistent world of shifting motives. Players will take on the role of a wandering adventurer with their own special set of skills and their own reasons for traveling to this dark corner of the world.", number_of_players: 4},
#   {title: "Brass: Birmingham", description: "Brass Birmingham is an economic strategy game sequel to Martin Wallace 2007 masterpiece, Brass. Birmingham tells the story of competing entrepreneurs in Birmingham during the industrial revolution, between the years of 1770-1870.", number_of_players: 4},
#   {title: "Terraforming Mars", description: "In the 2400s, mankind begins to terraform the planet Mars. Giant corporations, sponsored by the World Government on Earth, initiate huge projects to raise the temperature, the oxygen level, and the ocean coverage until the environment is habitable.", number_of_players: 5},
#   {title: "Twilight Imperium (Fourth Edition)", description: "Twilight Imperium (Fourth Edition) is a game of galactic conquest in which three to six players take on the role of one of seventeen factions vying for galactic domination through military might, political maneuvering, and economic bargaining.", number_of_players: 6}
# ])

Category.create([
  {name: "Roll and Movie", desc: "Rolling dice, spinning a wheel or drawing cards are what allow the players to make their move.", examples: "Clue, Monopoly, Candy land, The Game of Life"},
  {name: "Worker Placement", desc: "Worker placement games are usually played slower and with more strategy. Players allocate a limited number of tokens ('workers') to multiple stations that provide various defined actions.", examples: "Viticulture, Dinosaur Island, Lord of Waterdeep, Champions of Midgard, Rajas of the Ganges"},
  {name: "Cooperative", desc: "Its all about team work. Players work together to acheve a comeon goal, wining the game.", examples: "Pandamic, Castle Panic, Forbidden Island"},
  {name: "Secret Identity", desc: "Desception is the name of the game. Forgeting who you are and taking in your game character as yourself.", examples: "Mafia, Coup, Secret Hitler, One Night Ultimate Werewolf"},
])