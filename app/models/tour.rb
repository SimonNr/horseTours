class Tour < ActiveRecord::Base
  attr_accessible :days, :description, :difficulty, :hours, :minutes, :teaser, :title, :url
end
