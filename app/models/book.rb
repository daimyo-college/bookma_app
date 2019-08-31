class Book < ApplicationRecord
  belongs_to :list
  has_many :comments
end
