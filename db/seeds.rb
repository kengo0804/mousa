# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Affiliation.create(affiliation_name:'Piano')
Affiliation.create(affiliation_name:'Vocal')
Affiliation.create(affiliation_name:'Guitar')
Affiliation.create(affiliation_name:'Bass')
Affiliation.create(affiliation_name:'Drum')
Affiliation.create(affiliation_name:'Percussion')
Affiliation.create(affiliation_name:'Brass$Woodwind')
Affiliation.create(affiliation_name:'Strings')

Genre.create(genre_name:'Pop')
Genre.create(genre_name:'Rock')
Genre.create(genre_name:'R&B/Soul')
Genre.create(genre_name:'Electronic/Dance')
Genre.create(genre_name:'Hip Hop/Rap')
Genre.create(genre_name:'Jazz/Smoot Jazz')
Genre.create(genre_name:'Metal')
Genre.create(genre_name:'Reggae')