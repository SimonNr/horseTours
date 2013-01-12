class TourCategory < ActiveRecord::Base
  belongs_to :tour
  belongs_to :category
  # attr_accessible :title, :body
end
