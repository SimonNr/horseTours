# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create name: 'Testcategory'
Category.create name: 'Testcategory 2'

Tour.create title: 'testTour', teaser: 'testTourTeaser', difficulty: 'low', days: '0', hours: '2', minutes: '0', description: 'testTourDesc', url: 'http://maps.google.de/maps?saddr=L%C3%BCtkenheide,+Westbevern&daddr=Willingrott,+M%C3%BCnster&hl=de&ie=UTF8&sll=52.004976,7.68078&sspn=0.064989,0.198097&geocode=FbTtGQMdRmF2ACkDrVtjkL65RzHBy-bsWUENGw%3BFaSFGQMdJLF1ACnTDSPpCry5RzHlyikSo3LBOw&oq=Willingro&dirflg=w&mra=ls&t=m&z=14&output=embed'