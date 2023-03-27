# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

categories = [
  { name: "Software Development", description: "Creating software applications and systems" },
  { name: "Data Science", description: "Analyzing and interpreting complex data" },
  { name: "Web Design", description: "Creating visually appealing and functional websites" },
  { name: "Marketing", description: "Promoting and selling products or services" },
  { name: "Finance", description: "Managing financial transactions and investments" },
  { name: "Human Resources", description: "Managing employee recruitment, selection, and training" },
  { name: "Graphic Design", description: "Creating visual concepts and designs for various media" },
  { name: "Project Management", description: "Organizing and overseeing projects from start to finish" },
  { name: "Customer Service", description: "Providing support and assistance to customers" },
  { name: "Sales", description: "Selling products or services to customers" },
]

categories.each do |category|
  Category.create(category)
end
