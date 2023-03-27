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

# Create 10 categories
Category.create([
  { name: "Software Development", description: "Developing software applications and systems" },
  { name: "Data Science", description: "Analyzing and interpreting complex data sets" },
  { name: "Web Development", description: "Building and maintaining websites and web applications" },
  { name: "Cybersecurity", description: "Protecting computer systems and networks from cyber attacks" },
  { name: "IT Support", description: "Helping users troubleshoot and resolve technical issues" },
  { name: "Cloud Computing", description: "Designing and implementing cloud-based solutions" },
  { name: "Network Administration", description: "Maintaining and optimizing computer networks" },
  { name: "Database Administration", description: "Managing and securing databases" },
  { name: "UI/UX Design", description: "Designing user interfaces and user experiences" },
  { name: "Mobile App Development", description: "Creating mobile applications for iOS and Android" },
])
categories = Category.all

50.times do
  category = categories.sample

  Job.create(
    title: Faker::Job.title,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    company: Faker::Company.name,
    location: Faker::Address.city,
    category_id: category.id,
    salary_range: "$#{Faker::Number.between(from: 50000, to: 200000)} - $#{Faker::Number.between(from: 200000, to: 500000)}",
    employment_type: ["Full-time", "Part-time", "Contract"].sample,
    years_of_experience: Faker::Number.between(from: 1, to: 10),
    education_level: ["High school diploma", 'Bachelor\'s degree', 'Master\'s degree', "PhD"].sample,
    posted_at: Faker::Time.between(from: 1.year.ago, to: Time.now),
    expires_at: Faker::Time.between(from: Time.now, to: 6.months.from_now),
  )
end

puts "Done seeding"
