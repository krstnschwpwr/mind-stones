class MyDay < ApplicationRecord
  has_many :tasks

  validates :reflection, presence: true,
                    length: { minimum: 5 }
end
