class Todo < ApplicationRecord
  belongs_to :list

  validates :name
end
