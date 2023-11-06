class Subject < ApplicationRecord
  scope :visible, -> { where(visible: true) }
  scope :invisible, -> { where(visible: false) }
  scope :sorted, -> { order(created_at: :desc) }
  scope :search, ->(query) { where("name LIKE ?", "%#{query}%") }
end
