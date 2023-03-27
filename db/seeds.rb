# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# First, create the categories
# Seed data for categories table

puts "Started seed data"

Category.create(name: "Software Development", description: "Creating software applications and systems")
Category.create(name: "Data Analysis", description: "Analyzing and interpreting data to make informed decisions")
Category.create(name: "Marketing", description: "Promoting products and services to customers")
Category.create(name: "Customer Support", description: "Assisting customers with inquiries and issues")

# Seed data for jobs table
Job.create(
  title: "Full Stack Developer",
  description: "Developing web applications using Ruby on Rails and React",
  company: "Acme Inc.",
  location: "New York, NY",
  category_id: Category.find_by(name: "Software Development").id,
  salary_range: "$80,000 - $120,000",
  employment_type: "Full-time",
  years_of_experience: 3,
  education_level: 'Bachelor\'s degree',
  posted_at: Time.now,
  expires_at: 3.months.from_now,
)

Job.create(
  title: "Data Analyst",
  description: "Analyzing customer data to provide insights for business decisions",
  company: "Beta Corp.",
  location: "San Francisco, CA",
  category_id: Category.find_by(name: "Data Analysis").id,
  salary_range: "$70,000 - $100,000",
  employment_type: "Full-time",
  years_of_experience: 2,
  education_level: 'Bachelor\'s degree',
  posted_at: Time.now,
  expires_at: 1.month.from_now,
)

Job.create(
  title: "Social Media Manager",
  description: "Developing and executing social media marketing strategies",
  company: "Gamma Inc.",
  location: "Los Angeles, CA",
  category_id: Category.find_by(name: "Marketing").id,
  salary_range: "$50,000 - $70,000",
  employment_type: "Part-time",
  years_of_experience: 1,
  education_level: 'Bachelor\'s degree',
  posted_at: Time.now,
  expires_at: 6.months.from_now,
)

Job.create(
  title: "Customer Service Representative",
  description: "Assisting customers with inquiries and resolving issues",
  company: "Delta Inc.",
  location: "Chicago, IL",
  category_id: Category.find_by(name: "Customer Support").id,
  salary_range: "$30,000 - $40,000",
  employment_type: "Full-time",
  years_of_experience: 0,
  education_level: "High school diploma",
  posted_at: Time.now,
  expires_at: 2.months.from_now,
)

puts "Done seeding"
