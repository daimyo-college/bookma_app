class Book < ApplicationRecord
  belongs_to :list
  has_many :comment
end
