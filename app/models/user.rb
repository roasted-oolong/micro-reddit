class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 25 }
    validates :email, presence: true, uniqueness: true

    has_many :posts
    has_many :comment
end
