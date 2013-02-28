class Message < ActiveRecord::Base
	has_many :userMessages
	has_many :users, :through => :userMessages

  	attr_accessible :content, :from, :id, :subject, :to, :user_ids, :users
end