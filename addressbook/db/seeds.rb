# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# phones in cents
contacts = [ 
    { 
        name: 'Jeremy Lewis', 
        address: '99 Oneway Drive', 
        city: 'Oklahoma',
        state: 'Mississipi',
        phone: 89009999
    }, 
    { 
        name: 'Sandra Bullock', 
        address: '14 Tree Street', 
        city: 'Perth', 
        state: 'Of Decay',    
        phone: 10900898
    }, 
    { 
        name: 'Trudy Doody', 
        address: 'Tuscan Penines', 
        city: 'Eloh', 
        state: 'El',      
        phone: 45004589
    }, 
    { 
        name: 'Just Barry', 
        address: '123 A real place Road', 
        city: 'The', 
        state: 'The',     
        phone: 99999991 
    } 
] 

# .create will not throw an error if seed fails
# .create! will throw an error if seed fails 
Contact.create!(contacts) { |contact| puts "#{contact[:name]} seeded" }