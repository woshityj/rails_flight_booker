# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Airport.create(name: "SFO")
Airport.create(name: "NYC")

Flight.create(date: "2021-04-26", time: "16:00:00", duration: 120, from_id: 1, to_id: 2)
Flight.create(date: "2021-04-26", time: "18:00:00", duration: 120, from_id: 1, to_id: 2)