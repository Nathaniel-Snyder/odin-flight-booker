# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Airport.delete_all
Flight.delete_all

airports = Airport.create([{ code: 'SFO'}, {code: 'NYC'}, {code: 'ATL'}, 
							{code: 'ORD'}, {code: 'LAX'}, {code: 'DFW'}])

Flight.create!(	from_airport: airports.first,
				to_airport: airports.last,
				start_time: Time.zone.now,
				duration: 180)

Flight.create!(	from_airport: airports.last,
				to_airport: airports.second,
				start_time: Time.zone.now,
				duration: 75)