class User < ApplicationRecord
  belongs_to :like
  belongs_to :dislike
end
