class PageSerializer < ActiveModel::Serializer
  attributes :id, :number, :content, :story_id, :image
end
