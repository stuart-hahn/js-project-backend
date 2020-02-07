# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = Project.create([{ title: 'Seed Project 1'}, { title: 'Seed Project 2'}])
tasks = Task.create([{ title: 'Seed Task 1 for Project 1', project: projects.first }, { title: 'Seed Task 1 for Project 2', project: projects.last }])