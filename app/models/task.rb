class Task < ApplicationRecord
  has_many :milestones
  accepts_nested_attributes_for :milestones, allow_destroy: true

  validates :name, presence: true,
                    length: { minimum: 5 }
end
