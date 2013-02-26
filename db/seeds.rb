# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['user', 'admin'].each do |role|
	Role.find_or_create_by_name role
end	

u = User.create(username:"test", email:"test@test.de", password:"123456", password_confirmation:"123456")
u.add_role :user
u.save

a = User.create(username:"Simon", email:"simon@test.de", password:"654321", password_confirmation:"654321")
a.add_role :admin
a.save

t = Tour.create(title: 'testTour', teaser: 'testTourTeaser', difficulty: 'low', days: '0', hours: '2', minutes: '0', description: 'testTourDesc', url: 'http://maps.google.de/maps?saddr=L%C3%BCtkenheide,+Westbevern&daddr=Willingrott,+M%C3%BCnster&hl=de&ie=UTF8&sll=52.004976,7.68078&sspn=0.064989,0.198097&geocode=FbTtGQMdRmF2ACkDrVtjkL65RzHBy-bsWUENGw%3BFaSFGQMdJLF1ACnTDSPpCry5RzHlyikSo3LBOw&oq=Willingro&dirflg=w&mra=ls&t=m&z=14')
t.creator = u
t.save

to1 = Tournament.create(title:"Bissendorf", category:"C", startDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), endDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), registrationOffice:"Bissendorf", deadline:DateTime.strptime("2013/04/19", "%Y/%m/%d"), information:"Pr&uuml;fung: <br>5A-1A  15,00 &euro; pro Start <br>5B-1B  10,00 &euro; pro Start <br>Paddock: 40,00 &euro;", place:"http://maps.google.de/maps?q=Bissendorf&hl=de&sll=51.581349,6.245758&sspn=0.230409,0.792389&hnear=Bissendorf,+Niedersachsen&t=m&z=11")
to1.creator = u
to1.save
to2 = Tournament.create(title:"Kevelaer", category:"C", startDate:DateTime.strptime("2013/03/08", "%Y/%m/%d"), endDate:DateTime.strptime("2013/03/10", "%Y/%m/%d"), registrationOffice:"Duisburg", deadline:DateTime.strptime("2013/02/22", "%Y/%m/%d"), information:"<p>Startgeb&uuml;hr:</p><p>Senioren = 15,00 &euro;<br />Jugendliche = 12,00 &euro;<br />Paid-Warm-Up = 7,50 &euro;</p><p>Bezahlung:</p><p>Startgeb&uuml;hren bitte bis zum Nennungsschluss auf folgendes<br />Konto &uuml;berweisen:<br />Turnierkonto, Konto 2458605, Postbank, BLZ 500 100 60<br />Verwendung: Trainingsturnier Kevelaer M&auml;rz 2011 + Angabe der<br />&nbsp;Mitgliedsnummer/Name<br />Beleg der &Uuml;berweisung der Nennung beilegen<br />Lastschriftverfahren wird nicht durchgef&uuml;hrt! Wir bitten die Betr&auml;ge zu<br />&uuml;berweisen.</p><p>Boxen/Paddock:</p><p>Paddocks 15,- Euro, 20 Euro Paddockpfand<br />Bitte ma&szlig;voll abstecken und sauber hinterlassen!<br />Das Paddockpfand wird nur nach Abnahme des Paddocks und Vorlage<br />des Paddockscheins erstattet.<br />&nbsp;</p>", place:"http://maps.google.de/maps?q=Kevelaer&hl=de&ie=UTF8&sll=52.237771,8.170284&sspn=0.227065,0.792389&oq=Kev&hnear=Kevelaer,+D%C3%BCsseldorf,+Nordrhein-Westfalen&t=m&z=11")
to2.creator = u
to2.save




