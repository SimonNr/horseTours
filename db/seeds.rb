# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

['user', 'admin'].each do |role|
	Role.find_or_create_by_name role

u = User.create(username:"test", email:"test@test.de", password:"123456", password_confirmation:"123456")
u.add_role :user
u.save

a = User.create(username:"Simon", email:"simon@test.de", password:"654321", password_confirmation:"654321")
a.add_role :admin
a.save

t = Tour.create(title: 'testTour', teaser: 'testTourTeaser', difficulty: 'low', days: '0', hours: '2', minutes: '0', description: 'testTourDesc', url: 'http://maps.google.de/maps?saddr=L%C3%BCtkenheide,+Westbevern&daddr=Willingrott,+M%C3%BCnster&hl=de&ie=UTF8&sll=52.004976,7.68078&sspn=0.064989,0.198097&geocode=FbTtGQMdRmF2ACkDrVtjkL65RzHBy-bsWUENGw%3BFaSFGQMdJLF1ACnTDSPpCry5RzHlyikSo3LBOw&oq=Willingro&dirflg=w&mra=ls&t=m&z=14&output=embed')
t.creator = u
t.save