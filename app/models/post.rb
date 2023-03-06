class Post < ApplicationRecord

    has_many :likes
    has_many :dislikes
    has_many :users, through: :dislikes
    has_many :users, through: :likes

end
