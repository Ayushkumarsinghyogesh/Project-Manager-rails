# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
abhi = User.create(email: "abhi@home.com", username: "abhi",  password: "password")
ravi = User.create(email: "ravir@home.com", username: "ravi",  password: "password")
man = User.create(email: "man@home.com", username: "man", password: "password")

#Projects
rails = Project.create(name: "rails")
ruby = Project.create(name: "python")
cli = Project.create(name: "CLI")


#Tasks
task = Task.create(description: "complete show page",user_id: abhi.id, project_id: rails.id, due_date: Date.today)
task2 = Task.create(description: "show multiple tasks", user_id: abhi.id, project_id: rails.id)
task3 = Task.create(description: "Create command line design", user_id: ravi.id, project_id: cli.id, due_date: Date.today)
task4 = Task.create(description: "make tic-tac-toe", user_id: man.id, project_id: ruby.id, due_date: Date.today)
