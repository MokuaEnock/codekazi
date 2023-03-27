class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :company, :location, :salary_range, :employment_type, :years_of_experience, :education_level, :posted_at, :expires_at, :is_active

  belongs_to :category

  def posted_at
    object.posted_at.strftime("%Y-%m-%d %H:%M:%S")
  end

  def expires_at
    object.expires_at.strftime("%Y-%m-%d %H:%M:%S")
  end
end
