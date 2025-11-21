class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie, :scope => [:list]


end
#Un signet doit être lié à un film et une liste, et les associations [film, liste] doivent être uniques.
