class Job < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
                  against: [:title, :description],
                  using: {
                    tsearch: { prefix: true },
                  }
  before_save :update_searchable_content

  def update_searchable_content
    self.searchable_content = [
      title,
      description,
      company,
      location,
      category&.name,
      salary_range,
      employment_type,
      years_of_experience,
      education_level,
    ].compact.join(" ")
  end

  has_and_belongs_to_many :categories
end
