class UserSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :stories, serializer: UserStorySerializer
end
