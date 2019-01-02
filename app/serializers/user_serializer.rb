class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :image_url, :image_credit, :image_credit_link
  has_many :stories, serializer: UserStorySerializer
end
