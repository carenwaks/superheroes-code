# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

h1 = Hero.create(name:"Kamala Khan", super_name:"Ms. Marvel")
h2 = Hero.create(name:"Barry Allen", super_name:"Flash")
h3 = Hero.create(name:"Clark Kent", super_name:"Superman")
h4 = Hero.create(name:"Kara Danvers", super_name:"Supergirl")

p1 = Power.create(name: "super strength", description: "gives the wielder super-human strengths")
p2 = Power.create(name: "flight", description: "gives the wielder the ability to fly through the skies at supersonic speed")
p3 = Power.create(name: "super speed", description: "gives the wielder super-human speed")
p4 = Power.create(name: "x-ray vision", description: "gives the wielder the ability to destroy anything they look at with their mind")

Heropower.create(strength: "Average", power_id: p1.id, hero_id: h1.id)
Heropower.create(strength: "Weak", power_id: p4.id, hero_id: h1.id)
Heropower.create(strength: "Strong", power_id: p2.id, hero_id: h3.id)
Heropower.create(strength: "Strong", power_id: p4.id, hero_id: h3.id)
Heropower.create(strength: "Weak", power_id: p1.id, hero_id: h2.id)
Heropower.create(strength: "Strong", power_id: p3.id, hero_id: h2.id)
Heropower.create(strength: "Strong", power_id: p1.id, hero_id: h4.id)
Heropower.create(strength: "Average", power_id: p4.id, hero_id: h4.id)

puts "Done seeding "