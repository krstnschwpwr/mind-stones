class Task < ApplicationRecord
  has_many :milestones
  belongs_to :my_days

end
