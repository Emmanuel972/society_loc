# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Game.destroy_all

puts "Creating games..."
bios = {name: "bios :Mesofouna ", description: "Bios : Mesofauna fait partie de la série de jeux Bios. Il s'agit d'une version plus accessible de Bios : Megafau..."}
insolito = {name: "insolito", description: "Constituez deux équipes de choc et affrontez-vous à base de questions aussi improbables que farfelues."}
old = {name: "old_london_ridge", description: "Old London Bridge est un jeu de placement d'ouvrier dans lequel vous devez reconstruire le pont de Londr..."}
punto = {name: "punto", description: "Punto est un jeu de cartes dans lequel les joueurs doivent poser 4 cartes de la même couleur dans le bu..."}
las_vegas = {name: "las vegas", description: "Dans Las Vegas, placez astucieusement vos dés pour essayer de remporter un maximum de cash sous le n..."}
vilainous = {name: "vilaious", description: "Villainous est un jeu de société qui vous met dans la peau de méchants emblématiques, bien décidés à re..."}
tres_fute = {name: "trés_futé", description: "Très futé est un jeu de dés, de combinaisons et de prise de risque. Lancez les dés et cochez les bonnes..."}
esquisse = {nane: "esquissé ?", description: "Esquissé ? est LE jeu d’ambiance par excellence. Basé sur le principe du téléphone arabe, le jeu trouve son o..."}
gold = {name: "gold", description: "Dans ce jeu de mémoire amusant, vous vous glissez dans la peau de chercheurs d’or et tentez d’en récup..."}
control = {"control", description: "Control est un jeu de cartes dans lequel les joueurs incarnent des voyageurs dans le temps qui ont été pri..."}

[bios, insolito, old, punto, las_vegas, vilainous, tres_fute, esquisse, gold, control].each do |attributes|
  game = Game.create!(attributes)
  puts "Created #{game.name}"
end
puts "Finished!"
