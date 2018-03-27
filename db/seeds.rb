# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ name: 'Alfonso', last_name: 'Zuniga', email: 'ajzuniga1@miuandes.cl', phone: '967850482', password: '12345', address: 'Camino Otonal 1452'}, { name: 'Francisco', last_name: 'Borie', email: 'frborie@miuandes.cl', phone: '965421874', password: '458796', address: 'Colina la Vista 4586'}, { name: 'Santiago', last_name: 'Fernandez', email: 'sfernandez1@miuandes.cl', phone: '956124875', password: 'poiuyt', address: 'Cosa mas buena 56'}])
places = Place.create([{name: 'Movistar Arena', address: 'Camino LArgo 4369', capacity: 18000}])
events = Event.create([{name: 'Concert', description: 'Un concierto para las masas comunistas abiertas de mente', start_date: '1522162973', place: places.first}, {name: 'Lollapaloza', description: 'Gente cuica en el Parque OHiggins', start_date: '1521031531', place: places.first}])
tickets = Ticket.create([{description: 'Ticket for Lollapaloza', price: 98000, event: events.second}, {description: 'Ticket for Concierto', price: 54990, event: events.first}, {description: 'Ticket for Lollapaloza VIP', price: 257890, event: events.second}])
transactions = Transaction.create([{user: users.first, ticket: tickets.second, time_of_trans: '1518612331'}, {user: users.second, ticket: tickets.third, time_of_trans: '1519735531'}])
