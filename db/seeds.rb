# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

b1 = Event.create name:"Uiminen", preview: "Uidaan porukalla suomenlinnaan ja takaisin!", date: Date.parse('17/09/2017')
b2 = Event.create name:"Kebab fetivaalit", preview: "Kebab festivaalit suvilahdessa. Suvilahteen järjestetään suomen isoimmat kebab festivaalit, jossa pääsee maistaamaan mitä maukkaimpia kebab annoksia", date: Date.parse('18/09/2017')
b3 = Event.create name:"Metallica keikka", preview: "Metallica soittaa hernesaaren rannassa perinteiseen tyyliin.", date: Date.parse('19/09/2017')
b4 = Event.create name:"Tanssitunti", preview: "Nyt on päästään tanssiamaan sambaa! Tapahtuma järjestetään kumpulan unisportin tiloissa klo 16 alkaen!", date: Date.parse('20/09/2017')

b1.comments.create content:"Kuullostaapa tosi fiksulta :o"
b1.comments.create content:"En varmasti ui"