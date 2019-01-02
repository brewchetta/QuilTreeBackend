class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :image
  has_many :stories, serializer: UserStorySerializer
end
