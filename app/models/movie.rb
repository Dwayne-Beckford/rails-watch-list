class Movie < ApplicationRecord
    has_many :bookmarks
    has_many :list, through: :bookmark

    validates :title, :overview, presence: true
    validates :title, :overview, uniqueness: true
end
