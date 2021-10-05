class Todo < ApplicationRecord
  self.per_page = 10

  has_many :items, dependent: :destroy

  validates :title, :created_by, presence: true
end
