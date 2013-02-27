require 'spec_helper'

describe Tournament do

  	it "should not be valid tournament without information" do
		to = Tournament.new(title:"TestTournament", category:"D", startDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), endDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), registrationOffice:"Warendorf", deadline:DateTime.strptime("2013/04/19", "%Y/%m/%d"), place:"http://maps.google.de/maps?q=Bissendorf&hl=de&sll=51.581349,6.245758&sspn=0.230409,0.792389&hnear=Bissendorf,+Niedersachsen&t=m&z=11")
		to.should_not be_valid
	end

	it "should not be valid tournament without title" do
		to = Tournament.new(category:"D", startDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), endDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), registrationOffice:"Warendorf", deadline:DateTime.strptime("2013/04/19", "%Y/%m/%d"), information:"Pr&uuml;fung: <br>5A-1A  15,00 &euro; pro Start <br>5B-1B  10,00 &euro; pro Start <br>Paddock: 40,00 &euro;", place:"http://maps.google.de/maps?q=Bissendorf&hl=de&sll=51.581349,6.245758&sspn=0.230409,0.792389&hnear=Bissendorf,+Niedersachsen&t=m&z=11")
		to.should_not be_valid
	end

	it "should not be valid tournament without registrationOffice" do
		to = Tournament.new(title:"TestTournament", category:"D", startDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), endDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), deadline:DateTime.strptime("2013/04/19", "%Y/%m/%d"), information:"Pr&uuml;fung: <br>5A-1A  15,00 &euro; pro Start <br>5B-1B  10,00 &euro; pro Start <br>Paddock: 40,00 &euro;", place:"http://maps.google.de/maps?q=Bissendorf&hl=de&sll=51.581349,6.245758&sspn=0.230409,0.792389&hnear=Bissendorf,+Niedersachsen&t=m&z=11")
		to.should_not be_valid
	end

	it "should not be valid tournament without place" do
		to = Tournament.new(title:"TestTournament", category:"D", startDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), endDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), registrationOffice:"Warendorf", deadline:DateTime.strptime("2013/04/19", "%Y/%m/%d"), information:"Pr&uuml;fung: <br>5A-1A  15,00 &euro; pro Start <br>5B-1B  10,00 &euro; pro Start <br>Paddock: 40,00 &euro;")
		to.should_not be_valid
	end

	it "should not be valid place 'url' from other website but maps.google" do
		to = Tournament.new(title:"TestTournament", category:"D", startDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), endDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), registrationOffice:"Warendorf", deadline:DateTime.strptime("2013/04/19", "%Y/%m/%d"), information:"Pr&uuml;fung: <br>5A-1A  15,00 &euro; pro Start <br>5B-1B  10,00 &euro; pro Start <br>Paddock: 40,00 &euro;", place:"www.youtube.de")
		to.should_not be_valid
	end


end
