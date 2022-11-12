# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

seedData = Task.create(
    title: "Pick up rubbish", 
    description: "Let's go for a sick as walk and pick up some feral as rubbish",
    assigned_to: "Christopher",
    date: "13/11/2022",
    status: "to do"
)
