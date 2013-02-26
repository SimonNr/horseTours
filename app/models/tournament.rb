class Tournament < ActiveRecord::Base
  attr_accessible :category, :creatorID, :deadline, :endDate, :information, :place, :registrationOffice, :startDate, :title

  belongs_to :creator, class_name: "User"

  validates :title, :category, :place, :registrationOffice, :information, presence: true 
  validates :place, format: %r|^http(s?)://maps.google.de/| 
end
