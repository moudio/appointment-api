class Book < ApplicationRecord
    belongs_to :user, foreign_key: true
    belongs_to :car, foreign_key: true
end
