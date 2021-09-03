class User < ApplicationRecord
    has_many :diems
    has_many :practices, through: :diems
    has_many :dreams, through: :diems
    has_secure_password
    validates :email, presence: true, uniqueness: true
end
