class Tournament < ActiveRecord::Base
  attr_accessible :category, :creator_id, :deadline, :endDate, :information, :place, :registrationOffice, :startDate, :title

  belongs_to :creator, class_name: "User"
end
