class TourComment < ActiveRecord::Base
  attr_accessible :comment, :tour_id, :user_id

  belongs_to :creator, class_name: "User"
  belongs_to :tour, dependent: :destroy
end
