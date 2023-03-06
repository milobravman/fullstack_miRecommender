class User < ApplicationRecord
    has_many :likes
    has_many :dislikes
    has_many :posts, through: :dislikes
    has_many :posts, through: :likes

end
