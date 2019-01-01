class PageSerializer < ActiveModel::Serializer
  attributes :id, :number, :content, :content_2, :story_id, :image
end
