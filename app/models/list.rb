class List < ApplicationRecord
  has_many :book
  belongs_to :user
end