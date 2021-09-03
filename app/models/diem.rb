class Diem < ApplicationRecord
  belongs_to :user
  validates :custdate, presence: true
end
