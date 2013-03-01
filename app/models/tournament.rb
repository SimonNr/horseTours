class Tournament < ActiveRecord::Base
  attr_accessible :category, :creator_id, :deadline, :endDate, :information, :place, :registrationOffice, :startDate, :title, :creator, :creator_id

  belongs_to :creator, class_name: "User"

  has_many :creator_tournaments, class_name: "Tournament", foreign_key: :creator_id

  validates :title, :place, :registrationOffice, :information, presence: true 
  validates :place, format: %r|^http(s?)://maps.google.de/| 

  def to_param
  	"#{id}-#{title.parameterize}"
  end
end