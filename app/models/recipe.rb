class Recipe < ApplicationRecord
    validates :titles, presence: true

    validates :instructions, length: { minimum:50 }

    belongs_to :user
end
