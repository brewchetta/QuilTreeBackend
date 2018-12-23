class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio
  has_many :stories, serializer: UserStorySerializer
end
