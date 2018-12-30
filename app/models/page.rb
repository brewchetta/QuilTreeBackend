class Page < ApplicationRecord
  belongs_to :story
  validates :number, numericality: { only_integer: true }
end
