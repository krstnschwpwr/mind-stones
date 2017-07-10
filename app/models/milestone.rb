class Milestone < ApplicationRecord
  belongs_to :task

  validates :description, presence: true,
                    length: { minimum: 5 }
end
