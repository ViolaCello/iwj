class Diem < ApplicationRecord
  belongs_to :user
  has_many :practices
  has_many :dreams
  validates :custdate, presence: true
end
