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

user = User.create(username:"test", email:"test@test.de", password:"123456", password_confirmation:"123456")
user.add_role :user
user.save

a1 = User.create(username:"Simon", email:"simon@test.de", password:"654321", password_confirmation:"654321")
a1.add_role :admin
a1.save
a2 = User.create(username:"Joyce", email:"joyce@test.de", password:"123456", password_confirmation:"123456")
a2.add_role :admin
a2.save



t1 = Tour.create(title: 'testTour', teaser: 'testTourTeaser', difficulty: 'low', days: '0', hours: '2', minutes: '0', description: 'testTourDesc', url: 'http://maps.google.de/maps?saddr=L%C3%BCtkenheide,+Westbevern&daddr=Willingrott,+M%C3%BCnster&hl=de&ie=UTF8&sll=52.004976,7.68078&sspn=0.064989,0.198097&geocode=FbTtGQMdRmF2ACkDrVtjkL65RzHBy-bsWUENGw%3BFaSFGQMdJLF1ACnTDSPpCry5RzHlyikSo3LBOw&oq=Willingro&dirflg=w&mra=ls&t=m&z=14')
t1.creator = user
t1.save

t2 = Tour.create(title: 'EmsTour', teaser: 'Eine kleine Runde durch den Wald', difficulty: 'low', days: '0', hours: '2', minutes: '0', description: 'Ein kleines St&uuml;ck durch den Wald und dann an der Ems entlang.', url: 'http://maps.google.de/maps?saddr=Sickerhook&daddr=52.0222448,7.7293423+to:52.0200773,7.7282513+to:Sickerhook&hl=de&ll=52.024059,7.743344&spn=0.00713,0.024762&sll=52.019821,7.733388&sspn=0.007131,0.024762&geocode=FRvgGQMdQyF2AA%3BFeTLGQMdvvB1ACm5DMxSHby5RzGvHxUl1HmGhQ%3BFW3DGQMde-x1ACmNnO6PG7y5RzF-xFA4eoS8PQ%3BFZvfGQMdHiJ2AA&t=h&dirflg=w&mra=dvme&mrsp=2&sz=16&via=1,2&z=16')
t2.creator = user
t2.save

t3 = Tour.create(title: 'Haus Langen Tour', teaser: 'Eine Strecke an Haus Langen vorbei', difficulty: 'medium', days: '0', hours: '2', minutes: '0', description: 'Von Westbevern nach Haus Langen und dann durch den Wald wieder zur&uuml;ck', url: 'http://maps.google.de/maps?saddr=L%C3%BCtken+Heide&daddr=52.0303059,7.7573445+to:52.025042,7.753466+to:52.0223343,7.7528793+to:52.018713,7.762558+to:L%C3%BCtken+Heide&hl=de&ie=UTF8&ll=52.027347,7.753601&spn=0.007129,0.024762&sll=52.017298,7.760178&sspn=0.003566,0.012381&geocode=FQnxGQMd-l52AA%3BFWHrGQMdIF52ACn1no_7mr65RzF1SGH-MGJ-JA%3BFdLWGQMd-k52ACnjFJZNnL65RzFYzZM9zoiPaA%3BFT7MGQMdr0x2ACmtM8Wbnb65RzH43JiMxRVDiQ%3BFRm-GQMdfnJ2ACnpgUqPKby5RzF0A9he_w5FCg%3BFZ7wGQMdcV12AA&t=h&dirflg=w&mra=mrv&via=1,2,3,4&z=16')
t3.creator = user
t3.save

t4 = Tour.create(title: 'Fredde Tour', teaser: 'Eine kurze spazieren Reitstrecke', difficulty: 'low', days: '0', hours: '1', minutes: '0', description: 'Die Strecke geht gr&ooml;&szlig;tenteils an asphaltierten Stra&szlig;en entlang. Gute f&uuml;r eine kleine Schrittrunde', url: 'http://maps.google.de/maps?saddr=L%C3%BCtken+Heide&daddr=52.0357706,7.7616758+to:52.0380512,7.7690281+to:52.0369898,7.7731793+to:52.0304648,7.761517+to:L%C3%BCtken+Heide&hl=de&ie=UTF8&ll=52.034924,7.76684&spn=0.007128,0.024762&sll=52.031848,7.764287&sspn=0.007129,0.024762&geocode=FQnxGQMd-l52AA%3BFboAGgMdC292ACkVBZsUjr65RzEeS5aVVJMAfQ%3BFaMJGgMdxIt2ACl1s-GIi765RzGmFYUWunyAFQ%3BFX0FGgMd-5t2ACkh6TzVi765RzFJzz7zDKqdow%3BFQDsGQMdbW52ACmxoi1Chb65RzECpdTJD6VXyA%3BFZ7wGQMdcV12AA&t=h&dirflg=w&mra=mrv&via=1,2,3,4&z=16')
t4.creator = user
t4.save

t5 = Tour.create(title: 'Klatenberge Tour', teaser: 'Eine lange Strecke durch die Klatenberge', difficulty: 'high', days: '0', hours: '4', minutes: '0', description: 'Eine lange Strecke. Es geht von Westbevern aus Richtung Klatenberge und von dort wieder zur&uuml;ck.', url: 'http://maps.google.de/maps?saddr=L%C3%BCtken+Heide&daddr=52.0312311,7.7630289+to:52.0216741,7.7646947+to:52.0149199,7.7860839+to:52.000122,7.7901371+to:52.0007276,7.7833382+to:52.0194078,7.7721666+to:52.0309303,7.7650473+to:L%C3%BCtken+Heide&hl=de&ie=UTF8&sll=52.000498,7.784758&sspn=0.014267,0.049524&geocode=FQnxGQMd-l52AA%3BFf_uGQMdVHR2ACmnxRqBhb65RzGMvy6LrkAjvg%3BFarJGQMd1np2ACmxm9CNgb65RzHpNzC94ft4Ew%3BFUevGQMdY852AClLAopx2b25RzFaMorDu7IdZw%3BFXp1GQMdOd52ACmDZtJPwL25RzGfHXN2WJtY_g%3BFdd3GQMdqsN2ACm94v_Sxr25RzFJEFl7Ll_SUg%3BFc_AGQMdBph2ACnlzWhC1b25RzFY5N5KsfT5FQ%3BFdLtGQMdN3x2ACkN24Hmhb65RzEQ2ZB3ViMQkA%3BFZ7wGQMdcV12AA&t=h&dirflg=w&mra=dpe&mrsp=5&sz=15&via=1,2,3,4,5,6,7&z=15')
t5.creator = user
t5.save



to1 = Tournament.create(title:"Bissendorf", category:"C", startDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), endDate:DateTime.strptime("2013/05/01", "%Y/%m/%d"), registrationOffice:"Bissendorf", deadline:DateTime.strptime("2013/04/19", "%Y/%m/%d"), information:"Pr&uuml;fung: <br>5A-1A  15,00 &euro; pro Start <br>5B-1B  10,00 &euro; pro Start <br>Paddock: 40,00 &euro;", place:"http://maps.google.de/maps?q=Bissendorf&hl=de&sll=51.581349,6.245758&sspn=0.230409,0.792389&hnear=Bissendorf,+Niedersachsen&t=m&z=11")
to1.creator = user
to1.save

to2 = Tournament.create(title:"Kevelaer", category:"C", startDate:DateTime.strptime("2013/03/08", "%Y/%m/%d"), endDate:DateTime.strptime("2013/03/10", "%Y/%m/%d"), registrationOffice:"Duisburg", deadline:DateTime.strptime("2013/02/22", "%Y/%m/%d"), information:"<p>Startgeb&uuml;hr:</p><p>Senioren = 15,00 &euro;<br />Jugendliche = 12,00 &euro;<br />Paid-Warm-Up = 7,50 &euro;</p><p>Bezahlung:</p><p>Startgeb&uuml;hren bitte bis zum Nennungsschluss auf folgendes<br />Konto &uuml;berweisen:<br />Turnierkonto, Konto 2458605, Postbank, BLZ 500 100 60<br />Verwendung: Trainingsturnier Kevelaer M&auml;rz 2011 + Angabe der<br />&nbsp;Mitgliedsnummer/Name<br />Beleg der &Uuml;berweisung der Nennung beilegen<br />Lastschriftverfahren wird nicht durchgef&uuml;hrt! Wir bitten die Betr&auml;ge zu<br />&uuml;berweisen.</p><p>Boxen/Paddock:</p><p>Paddocks 15,- Euro, 20 Euro Paddockpfand<br />Bitte ma&szlig;voll abstecken und sauber hinterlassen!<br />Das Paddockpfand wird nur nach Abnahme des Paddocks und Vorlage<br />des Paddockscheins erstattet.<br />&nbsp;</p>", place:"http://maps.google.de/maps?q=Kevelaer&hl=de&ie=UTF8&sll=52.237771,8.170284&sspn=0.227065,0.792389&oq=Kev&hnear=Kevelaer,+D%C3%BCsseldorf,+Nordrhein-Westfalen&t=m&z=11")
to2.creator = user
to2.save

to3 = Tournament.create(title:"Oelde", category:"AQ", startDate:DateTime.strptime("2013/06/28", "%Y/%m/%d"), endDate:DateTime.strptime("2013/06/30", "%Y/%m/%d"), registrationOffice:"Hannover", deadline:DateTime.strptime("2013/05/22", "%Y/%m/%d"), information:"<p>Startgeb&uuml;hr:</p><p>Senioren = 15,00 &euro;<br />Jugendliche = 12,00 &euro;<br />Paid-Warm-Up = 7,50 &euro;</p><p>Bezahlung:</p><p>Startgeb&uuml;hren bitte bis zum Nennungsschluss auf folgendes<br />Konto &uuml;berweisen:<br />Turnierkonto, Konto 2458605, Postbank, BLZ 500 100 60<br />Verwendung: Trainingsturnier Kevelaer M&auml;rz 2011 + Angabe der<br />&nbsp;Mitgliedsnummer/Name<br />Beleg der &Uuml;berweisung der Nennung beilegen<br />Lastschriftverfahren wird nicht durchgef&uuml;hrt! Wir bitten die Betr&auml;ge zu<br />&uuml;berweisen.</p><p>Boxen/Paddock:</p><p>Paddocks 15,- Euro, 20 Euro Paddockpfand<br />Bitte ma&szlig;voll abstecken und sauber hinterlassen!<br />Das Paddockpfand wird nur nach Abnahme des Paddocks und Vorlage<br />des Paddockscheins erstattet.<br />&nbsp;</p>", place:"http://maps.google.de/maps?q=Oelde&hl=de&ie=UTF8&sll=52.034924,7.76684&sspn=0.007128,0.024762&t=h&hnear=Oelde,+M%C3%BCnster,+Nordrhein-Westfalen&z=11")
to3.creator = user
to3.save

to4 = Tournament.create(title:"Kevelaer", category:"AQ", startDate:DateTime.strptime("2013/05/03", "%Y/%m/%d"), endDate:DateTime.strptime("2013/05/05", "%Y/%m/%d"), registrationOffice:"Duisburg", deadline:DateTime.strptime("2013/04/04", "%Y/%m/%d"), information:"<p>LK 3A + LK 2A + LK 1A = 16,00 Euro<br />LK 3B + LK 2B + LK 1B = 13,00 Euro<br />Office Charge: 8,00 Euro<br />Boxen pro Tag 45,00 Euro<br />Boxen von Donnerstag 17.00 Uhr bis Sonntag Ende 120,00 Euro incl. Einstreu<br />Heu kann vor Ort gekauft werden &ndash; Kraftfutter bitte selbst mitbringen<br />Boxenkosten k&ouml;nnen bei Absage nur zur&uuml;ckerstattet werden, wenn eine<br />Weitervermietung gew&auml;hrleistet ist.<br />Boxenreservierungen sind ausschlie&szlig;lich &uuml;ber die Meldestelle m&ouml;glich.<br />Paddocks: 15 &euro; ( E-Zaun selbst mitbringen) &ndash; 20 &euro; Paddockpfand. Der<br />Paddockpfand wird bei sauberem Verlassen des Paddocks und Vorlage<br />des Paddockscheins an der Meldestelle zur&uuml;ckerstattet.<br />Camping pro Zelt oder Wohnwagen: 15 &euro;<br />Camping mit Strom nach Absprache m&ouml;glich<br />Camper mit Wohnmobil k&ouml;nnen daf&uuml;r den an der Anlage befindlichen<br />Wohnmobilparkplatz benutzen (Geb&uuml;hren sind vor Ort f&uuml;r Strom am Automaten zu<br />bezahlen &ndash; Kontrollen erfolgen durch den Eigent&uuml;mer des Platzes!)</p>", place:"http://maps.google.de/maps?q=Kevelaer&hl=de&ie=UTF8&sll=52.237771,8.170284&sspn=0.227065,0.792389&oq=Kev&hnear=Kevelaer,+D%C3%BCsseldorf,+Nordrhein-Westfalen&t=m&z=11")
to4.creator = user
to4.save

to5 = Tournament.create(title:"Kreuth Doppelshow", category:"AQ", startDate:DateTime.strptime("2013/05/09", "%Y/%m/%d"), endDate:DateTime.strptime("2013/05/12", "%Y/%m/%d"), registrationOffice:"Worms-LEiselheim", deadline:DateTime.strptime("2013/04/05", "%Y/%m/%d"), information:"<p>LK 1-3 A&nbsp; EUR 15,00 (pro Start)<br />LK 1-3 B&nbsp; EUR 12,50 (pro Start)<br />Quali-Klassen&nbsp; EUR 25,00 (je Zweifachstart)<br />Jungpferdepr&uuml;fungen:&nbsp; EUR 25,00 (je Zweifachstart)<br />Working Cowhorse&nbsp; EUR 110,00 (pro Start)<br />Quali Working Cowhorse&nbsp; EUR 110,00 (pro Start)<br />Boxing&nbsp; EUR 50,00 (pro Start)<br />FN-Reining&nbsp; EUR 75,00 (pro Start)<br />Horse &amp; Dog-Trail&nbsp; EUR 15,00 (pro Start)<br />Nachnenngeb&uuml;hren&nbsp; doppeltes Startgeld<br />Paid Warm Up Trail&nbsp; EUR 5,00 (5 Minuten)<br />Paid Warm Up Reining&nbsp; EUR 5,00 (5 Minuten)<br />Paid Warm Up Pleasure&nbsp; EUR 10,00 (25 Minuten)<br />mit Ansage &amp; Richterdummy/max. 12 Teilnehmer pro Pleasure Paid Warm Up</p>", place:"http://maps.google.de/maps?q=Kreuth+2,+92286+Rieden&hl=de&sll=51.829741,8.146396&sspn=0.229147,0.792389&t=h&hnear=Kreuth+2,+Kreuth+92286+Rieden,+Oberpfalz,+Bayern&z=16")
to5.creator = user
to5.save



com1 = TourComment.create(user_id: user.id, tour_id: t1.id, comment:"Nice tour. Easy to follow.")