class Job < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
                  against: [:title, :description],
                  using: {
                    trigram: { threshold: 0.2 },
                  }

  before_validation :update_searchable_content
  belongs_to :category, touch: true

  def update_searchable_content
    self.searchable_content = "#{title} #{description} #{category_id} #{company} #{location}"
  end
end
