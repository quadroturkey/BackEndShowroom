class User < ApplicationRecord
  has_secure_password
  has_many: :user_movies, dependant: :destroy 
  has_many: :movies, through: :user_movies
end
