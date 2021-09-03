class User < ApplicationRecord
    has_many :diems
    has_secure_password
    validates :email, presence: true, uniqueness: true
end
