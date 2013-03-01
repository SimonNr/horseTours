require 'spec_helper.rb'

describe "Tournaments" do

	before :each do
		click_link 'sign_in'
		fill_in 'user_username', :with => 'Test'
		fill_in 'user_password', :with => '123456'
		click_button 'signin'
		click_link 'HorseTours'
		click_link 'Tournaments'
		click_link 'New Tourn.'
		fill_in 'tournament_title', :with => 'TestTournament'
		select('AQ', :from => 'tournament_category')
		select('2013', :from => 'tournament_startDate_1i')
		select('May', :from => 'tournament_startDate_2i')
		select('01', :from => 'tournament_startDate_3i')
		select('2013', :from => 'tournament_endDate_1i')
		select('June', :from => 'tournament_endDate_2i')
		select('01', :from => 'tournament_endDate_3i')
		fill_in 'tournament_registrationOffice', :with => 'TestRegistrationOffice'
		select('2013', :from => 'tournament_deadline_1i')
		select('April', :from => 'tournament_deadline_2i')
		select('01', :from => 'tournament_deadline_3i')
		fill_in 'tournament_information', :with => 'TestInformation'
		fill_in 'tournament_place', :with => 'http://maps.google.de'
		click_button 'submit'
		page.should have_content 'Tournament was successfully created.'
		click_link 'edit'
		fill_in 'tournament_title', :with => 'test_edit'
		click_button 'submit'
		page.should have_content 'Tournament was successfully updated.'
		click_link 'destroy'
		click_button 'OK'
		page.should_not have_content 'test_edit'
	end



end



		