require 'spec_helper.rb'

describe "Tours" do

	before :each do
		click_link 'sign_in'
		fill_in 'user_username', :with => 'Test'
		fill_in 'user_password', :with => '123456'
		click_button 'signin'
		click_link 'HorseTours'
		click_link 'Tours'
		click_link 'New Tour'
		fill_in 'tour_title', :with => 'TestTour'
		fill_in 'tour_teaser', :with => 'TestTeaser'
		select('low', :from => 'tour_difficulty')
		select('0', :from => 'tour_days')
		select('1', :from => 'tour_hours')
		select('0', :from => 'tour_minutes')
		fill_in 'tour_description', :with => 'TestDescription'
		fill_in 'tour_url', :with => 'http://maps.google.de'
		click_button 'submit'
		page.should have_content 'Tour was successfully created.'
		fill_in 'comment', :with => 'beautiful'
		click_button 'submit'
		page.should have_content 'beautiful'
		click_link 'edit'
		fill_in 'tour_title', :with => 'test_edit'
		click_button 'submit'
		page.should have_content 'Tour was successfully updated.'
		click_link 'destroy'
		click_button 'OK'
		page.should_not have_content 'test_edit'
	end

end