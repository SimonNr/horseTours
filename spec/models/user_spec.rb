require 'spec_helper.rb'

describe User do

  	it "should not be valid user without Email" do
		u = User.new(username:"Max Mustermann", password:"123456")
		u.should_not be_valid
	end

	it "should not be valid email without @" do
		u = User.new(username:"Max Mustermann", password:"123456", email:"Mustermannemail.de")
		u.should_not be_valid
	end

	it "should not be valid email without dot" do
		u = User.new(username:"Max Mustermann", password:"123456", email:"Mustermann@emailde")
		u.should_not be_valid
	end
end
