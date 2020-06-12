class Car < ApplicationRecord
    has_many :books 
    has_many :users, through: :books
end
