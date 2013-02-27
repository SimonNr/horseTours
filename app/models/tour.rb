class Tour < ActiveRecord::Base
  attr_accessible :days, :description, :difficulty, :hours, :minutes, :teaser, :title, :url, :creator, :creator_id

  belongs_to :creator, class_name: "User"
  has_many :tour_categories
  has_many :tourComments
  has_many :categories, through: :tour_categories

  has_many :creator_tours, class_name: "Tour", foreign_key: :creator_id

  validates :description, :difficulty, :teaser, :title, :url, presence: true
  validates :url, format: %r|^http(s?)://maps.google.de/|

  def to_param
  	"#{id}-#{title.parameterize}"
  end
end