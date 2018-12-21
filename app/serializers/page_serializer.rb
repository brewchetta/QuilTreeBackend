class PageSerializer < ActiveModel::Serializer
  attributes :id, :number, :content
  belongs_to :story
end
