class CategorySerializer < ActiveModel::Serializer
  attributes :id

  has_many :jobs
end
