# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# db/seeds.rb

# First, create the categories
categories = Category.create([
  { name: "Web Development", description: "Developing websites and web applications" },
  { name: "Mobile Development", description: "Developing mobile applications" },
  { name: "Data Science", description: "Analyzing and interpreting complex data" },
  { name: "Artificial Intelligence", description: "Developing intelligent systems and algorithms" },
  { name: "Cybersecurity", description: "Protecting computer systems and networks from digital attacks" },
  { name: "Cloud Computing", description: "Providing computing resources over the internet" },
  { name: "Networking", description: "Designing and managing computer networks" },
  { name: "UI/UX Design", description: "Designing user interfaces and experiences" },
  { name: "Software Testing", description: "Ensuring the quality of software products" },
  { name: "Project Management", description: "Planning and executing projects" },
])

# Then create the jobs
30.times do |i|
  Job.create(
    title: "Tech Job #{i + 1}",
    description: "This is the description for Tech Job #{i + 1}",
    company: "Company #{i + 1}",
    location: "Location #{i + 1}",
    category: categories.sample,
    salary_range: "$#{rand(50_000..150_000)} - $#{rand(150_000..300_000)}",
    employment_type: ["Full-time", "Part-time", "Contract", "Freelance"].sample,
    years_of_experience: rand(1..10),
    education_level: ["High School Diploma", "Bachelor's Degree", "Master's Degree", "PhD"].sample,
    posted_at: Time.now - rand(1..30).days,
    expires_at: Time.now + rand(30..90).days,
    is_active: [true, false].sample,
  )
end
