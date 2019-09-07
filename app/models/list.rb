class List < ApplicationRecord
  has_many :books, dependent: :destroy
  belongs_to :user
end
