class User < ApplicationRecord
  belongs_to :likes
  belongs_to :dislikes
end
