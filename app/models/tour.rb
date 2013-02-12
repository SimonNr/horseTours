class Tour < ActiveRecord::Base
  attr_accessible :days, :description, :difficulty, :hours, :minutes, :teaser, :title, :url

  has_many :tour_categories
  has_many :comments
  has_many :categories, through: :tour_categories

  validates :description, :difficulty, :teaser, :title, :url, presence: true
  validates :url, format: %r|^http(s?)://maps.google.de/|
end