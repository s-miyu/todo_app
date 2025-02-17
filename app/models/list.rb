class List < ApplicationRecord
  has_many :todo

  validates :name
end
