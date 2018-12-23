class StorySerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :image, :description
  has_many :pages, serializer: StoryPageSerializer
end
