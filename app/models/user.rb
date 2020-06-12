class User < ApplicationRecord
    has_many :books 
    has_many :cars, through: :books
end
