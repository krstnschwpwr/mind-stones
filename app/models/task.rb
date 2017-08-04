class Task < ApplicationRecord
  has_many :milestones
  belongs_to :my_day
  accepts_nested_attributes_for :milestones, allow_destroy: true

  validates :name, presence: true,
                    length: { minimum: 5 }
end
