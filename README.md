# Jobless corner API

This is a Rails API that serves as the backend for a job board application. The API provides endpoints for creating, updating, deleting, and retrieving job postings.

## Getting Started

Prerequisites

- Ruby 2.7.4
- Rails 7.0.0

## Installing

1. Clone this repository
2. Run `bundle install` to install dependencies
3. Run `rails db:create` to create the database
4. Run `rails db:migrate` to run the migrations
5. Run `rails db:seed` to seed the database with sample data
6. Start the server with `rails s`

## API Documentation

The API provides the following endpoints:

### GET /jobs

Returns a list of all jobs.

#### Parameters

None

#### Response

{
"id": 1,
"title": "Full Stack Developer",
"description": "We are looking for a full stack developer to join our team.",
"location": "New York, NY",
"category_id": 1,
"created_at": "2022-03-26T16:35:01.821Z",
"updated_at": "2022-03-26T16:35:01.821Z",
"category": {
"id": 1,
"name": "Software Development",
"created_at": "2022-03-26T16:35:01.740Z",
"updated_at": "2022-03-26T16:35:01.740Z"
}
}

### Post/jobs

creates a new job

#### parameters

{
"title": "Full Stack Developer",
"description": "We are looking for a full stack developer to join our team.",
"location": "New York, NY",
"category_id": 1
}

#### response

{
"id": 1,
"title": "Full Stack Developer",
"description": "We are looking for a full stack developer to join our team.",
"location": "New York, NY",
"category_id": 1,
"created_at": "2022-03-26T16:35:01.821Z",
"updated_at": "2022-03-26T16:35:01.821Z",
"category": {
"id": 1,
"name": "Software Development",
"created_at": "2022-03-26T16:35:01.740Z",
"updated_at": "2022-03-26T16:35:01.740Z"
},
"created_at": "2022-03-27T08:45:30.296Z",
"updated_at": "2022-03-27T08:45:30.296Z"
}

### Jobs

Endpoints

- `GET /jobs` - get all jobs
- `GET /jobs/:id` - get a specific job by id
- `POST /jobs` - create a new job
- `PUT /jobs/:id` - update an existing job by id
- `DELETE /jobs/:id` - delete a specific job by id

Attributes

- `title` - the title of the job (string, required)
- `description` - the job description (text, required)
- `location` - the job location (string, required)
- `category_id` - the category id that the job belongs to (integer, required)
- `category` - the category that the job belongs to (object)
- `created_at` - the time at which the job was created (datetime)
- `updated_at` - the time at which the job was last updated (datetime)

Scopes

- `by_category(category_id)` - retrieve jobs in a specific category

Class Methods

- `search(search)` - search for jobs by title or description

### Categories

Endpoints

- `GET /categories` - get all categories
- `GET /categories/:id` - get a specific category by id
- `POST /categories` - create a new category
- `PUT /categories/:id` - update an existing category by id
- `DELETE /categories/:id` - delete a specific category by id

Attributes

- `name` - the name of the category (string, required)
- `created_at` - the time at which the category was created (datetime)
- `updated_at` - the time at which the category was last updated (datetime)

Setup

- Clone the repository: `git clone https://github.com/yourusername/job-board-api.git`
- Navigate to the project directory: `cd job-board-api`
- Install dependencies: `bundle install`
- Set up the database: rails `db:create db:migrate`
- Run the server: `rails server`
- Access the API endpoints at http://localhost:3000

## Testing

1. Set up the test database: `rails db:create RAILS_ENV=test`

2. Run tests: rspec

## Dependencies

- Ruby 2.7.4
- Rails 6.1.4
- PostgreSQL 13.4

## License

This project is licensed under the MIT License - see the LICENSE file for details.
