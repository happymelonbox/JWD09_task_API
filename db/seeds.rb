# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Task.create(
    title: "Pick up rubbish", 
    description: "Let's go for a sick as walk and pick up some feral as rubbish",
    assigned_to: "Christopher",
    date: "13/11/2022",
    status: "done",
    pod_name: "Testing Pod"
)

Task.create(
    title: "Pick up rubbish", 
    description: "Catch the homeless mouse that keeps stealing my lipstick",
    assigned_to: "Joelline",
    date: "09/12/2022",
    status: "to do",
    pod_name: "Testing Pod"
)

Task.create(
    title: "Slice onions", 
    description: "Slice ten onions for the bunnings sausage sizzle",
    assigned_to: "Henryr",
    date: "11/11/2022",
    status: "to do",
    pod_name: "Testing Pod"
)

Task.create(
    title: "Make a MacDaddy Peanut Butter sandwhich with honey", 
    description: "Spready McSpreaderson",
    assigned_to: "Gertrude",
    date: "13/11/2022",
    status: "to do",
    pod_name: "Testing Pod"
)

Task.create(
    title: "Pick nose", 
    description: "HUGE booger up there dawg, we need to investigate",
    assigned_to: "Jimr",
    date: "13/11/2022",
    status: "to do",
    pod_name: "Testing Pod"
)
