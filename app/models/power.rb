class Power < ApplicationRecord
    has_many :heropowers
    has_many :heros, through: :heropowers
    validates :description, presence: true, length: {minimum: 20}
end
