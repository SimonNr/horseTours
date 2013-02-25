class Tournament < ActiveRecord::Base
  attr_accessible :category, :creatorID, :deadline, :endDate, :information, :place, :registrationOffice, :startDate, :title
end
