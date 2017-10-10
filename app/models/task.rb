class Task < ApplicationRecord
  validates :description, presence: true,
                          length: {minimum: 2}
end
