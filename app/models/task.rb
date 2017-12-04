class Task < ApplicationRecord
  validates :name, length: { minimum: 3 }
  belongs_to :user
end
