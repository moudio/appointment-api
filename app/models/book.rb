class Book < ApplicationRecord
    belongs_to :user, index: true
    belongs_to :car, index: true
end
