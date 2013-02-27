require 'spec_helper'

describe Tour do
	
	it "should not be valid tour without description" do
		t = Tour.new(title: 'testTour', teaser: 'testTourTeaser', difficulty: 'low', days: '0', hours: '2', minutes: '0', url: 'http://maps.google.de/maps?saddr=L%C3%BCtkenheide,+Westbevern&daddr=Willingrott,+M%C3%BCnster&hl=de&ie=UTF8&sll=52.004976,7.68078&sspn=0.064989,0.198097&geocode=FbTtGQMdRmF2ACkDrVtjkL65RzHBy-bsWUENGw%3BFaSFGQMdJLF1ACnTDSPpCry5RzHlyikSo3LBOw&oq=Willingro&dirflg=w&mra=ls&t=m&z=14')
		t.should_not be_valid
	end

	it "should not be valid tour without title" do
		t = Tour.new(teaser: 'testTourTeaser', difficulty: 'low', days: '0', hours: '2', minutes: '0', description: 'testTourDesc', url: 'http://maps.google.de/maps?saddr=L%C3%BCtkenheide,+Westbevern&daddr=Willingrott,+M%C3%BCnster&hl=de&ie=UTF8&sll=52.004976,7.68078&sspn=0.064989,0.198097&geocode=FbTtGQMdRmF2ACkDrVtjkL65RzHBy-bsWUENGw%3BFaSFGQMdJLF1ACnTDSPpCry5RzHlyikSo3LBOw&oq=Willingro&dirflg=w&mra=ls&t=m&z=14')
		t.should_not be_valid
	end

	it "should not be valid tour without teaser" do
		t = Tour.new(title: 'testTour', difficulty: 'low', days: '0', hours: '2', minutes: '0', description: 'testTourDesc', url: 'http://maps.google.de/maps?saddr=L%C3%BCtkenheide,+Westbevern&daddr=Willingrott,+M%C3%BCnster&hl=de&ie=UTF8&sll=52.004976,7.68078&sspn=0.064989,0.198097&geocode=FbTtGQMdRmF2ACkDrVtjkL65RzHBy-bsWUENGw%3BFaSFGQMdJLF1ACnTDSPpCry5RzHlyikSo3LBOw&oq=Willingro&dirflg=w&mra=ls&t=m&z=14')
		t.should_not be_valid
	end

	it "should not be valid tour without url" do
		t = Tour.new(title: 'testTour', teaser: 'testTourTeaser', difficulty: 'low', days: '0', hours: '2', minutes: '0', description: 'testTourDesc')
		t.should_not be_valid
	end

	it "should not be valid url from other website but maps.google" do
		t = Tour.new(title: 'testTour', teaser: 'testTourTeaser', difficulty: 'low', days: '0', hours: '2', minutes: '0', description: 'testTourDesc', url:"www.youtube.de")
		t.should_not be_valid
	end
end