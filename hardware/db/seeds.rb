# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# prices in cents
products = [ 
    { 
        name: 'Ryobi 12V 1.3Ah Drill Driver Kit', 
        brand: 'Ryobi', 
        description: 'The 12V Drill Driver Kit is your go to for all those small jobs around the home. With a compact design, built in LED light and 22 setting configurable clutch, this handy drill will help you tackle those odd jobs around your home.', 
        price: 8900 
    }, 
    { 
        name: 'Makita 185mm 1200W Corded Circular Saw', 
        brand: 'Makita', 
        description: 'The Makita 185mm Circular Saw is ideal for any task and includes two 185mm saw blades for use with its high powered 1200W motor. ', 
        price: 10900 
    }, 
    { 
        name: 'Tuscan Path 46cm Half Barrel Wooden Planter', 
        brand: 'Tuscan Path', 
        description: 'Tuscan Path’s Wooden Planters offer a multi-purpose planter with lots of natural, rustic character. Their authentic, simple design brings out the beauty of their wooden construction. Made from acacia, they are useful as storage, craft containers gift hampers and even as a cooler.', 
        price: 4500 
    }, 
    { 
        name: 'Verve Design Chrome Hector Desk Lamp', 
        brand: 'Verve Design', 
        description: 'With a classic, retro feel the Hector desk lamp will look great on a desk, tabletop or bedside table. The adjustable shade makes it a practical and stylish lighting solution.', 
        price: 4990 
    } 
] 

# .create will not throw an error if seed fails
# .create! will throw an error if seed fails 
Product.create!(products) { |product| puts "#{product[:name]} seeded" }
#the above passes in the products hash, then passes block so when it successfully adds products (use rails db:seed to initiate)