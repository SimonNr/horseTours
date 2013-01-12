class Tour < ActiveRecord::Base
  attr_accessible :description, :difficulty, :duration, :teaser, :title, :url

  has_many :tour_categories
  has_many :categories, through: :tour_categories

  validates :description, :difficulty, :duration, :teaser, :title, :url, presence: true
  validates :url, format: %r|^http(s?)://maps.google.de/|
end