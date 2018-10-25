# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Film.create([
    {
    title: 'Star Wars',
    year: 1977,
    director: 'George Lucas',
    genre: 'Sci-fi',
    price: 17.99
},
{
    title: 'Waking Life',
    year: 2001,
    director: 'Richard Linklater',
    genre: 'Fantasy',
    price: 12.99
},
{
    title: 'Inglorious Basterds',
    year: 2009,
    director: "Quentin Tarantino",
    genre: 'War',
    price: 16.99
}
])