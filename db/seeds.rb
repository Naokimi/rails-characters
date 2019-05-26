# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "emptying database"

Specie.destroy_all
Character.destroy_all
Power.destroy_all

puts "creating species"

humanoid = Specie.create!(name: "humanoid", photo: "https://i.redd.it/yrcu49r4thh11.jpg")
reptilian = Specie.create!(name: "reptilian", photo: "https://i.redd.it/b540eh8oshh11.jpg")
avian = Specie.create!(name: "avian", photo: "https://i.redd.it/ral2yjyfthh11.jpg")
arthropoid = Specie.create!(name: "arthropoid", photo: "https://i.redd.it/3gxm1vchthh11.jpg")
fungoid = Specie.create!(name: "fungoid", photo: "https://i.redd.it/elfyjvs6thh11.jpg")
mammalian = Specie.create!(name: "mammalian", photo: "https://i.redd.it/xxth17rwshh11.jpg")
molluscoid = Specie.create!(name: "molluscoid", photo: "https://i.redd.it/adz2gnmushh11.jpg")
plantoid = Specie.create!(name: "plantoid", photo: "https://i.redd.it/7cdn592tshh11.jpg")

puts "creating chars"

man = Character.new(name: "Commonwealth of Man", photo: "https://stellaris.paradoxwikis.com/images/6/6e/Human.png", description: "The UN-sponsored Ulysses Initiative oversaw the construction of six great ark ships in low Earth orbit at the end of the 21st century. The ships, carrying a quarter million colonist each, were sent through a recently discovered subspace phenomenon on the outer edge of the Oort Cloud - a small, unstable wormhole. None were heard from again, and the destabilized wormhole vanished.\nYet unbeknownst to Earth, one of the ark ships survived the passage and established a flourishing colony. The pioneers who tamed this world were determined to realize humanity's manifest destiny - dominion over the galaxy at any cost.")
tzynn = Character.new(name: "Tzynn Empire", photo: "https://stellaris.paradoxwikis.com/images/d/d8/Reptilian_normal_09.png", description: "The Tzynn evolved from carnivorous, pack-hunting lizards that prowled the dunes of Tzynnia. They eventually developed a highly structured, hierarchical society that emphasized order and martial prowess above all else.\nBy the time the Tzynn entered the industrial age, a series of devastating global wars launched by a particularly ruthless warlord had already seen the establishment of a single, world-spanning nation. From these humble beginnings, the illustrious and ever-lasting Tzynn Empire was born.")
yondarim = Character.new(name: "Kingdom of Yondarim", photo: "https://stellaris.paradoxwikis.com/images/f/fc/Avian_normal_10.png", description: "The proud Yondar are an old race, using their wings to soar high above the frozen peaks of Yondarim for more than 200,000 years before they developed rudimentary technology and formed their first few scattered civilizations.\nOnce this development started, things progressed more rapidly and the Sky Clans grudgingly abandoned many of their most primitive traditions. The Yondar are highly spiritual and place great importance on religion, venerating their high kings as living gods.")
glebsig = Character.new(name: "Glebsig Foundation", photo: "https://stellaris.paradoxwikis.com/images/d/dd/Molluscoid_normal_07.png", description: "Ever since the first Glebsigi lifted their sight-organs above the surface of the glacial lakes on Ladnah to peek at the stars, these inquisitive molluscoids have felt an affinity for the unknown. Much as their early ancestors' tentacles grasped and stroked after new objects on the chill alpine lakebeds of their homeworld, burgeoning Glebsigan society reached for technological innovation and spiritual enlightenment throughout the centuries that followed.\nA sedentary and enduring species, the Glebsigi have perhaps by necessity developed a complex yet highly effective bureaucratic apparatus for dealing with the intricacies of managing a globally unified society. Additionally, their lack of natural predators on Ladnah has led the Glebsigi to exist in a state of permanently optimistic curiosity regarding other lifeforms.\nHaving established a firm societal foundation on Ladnah using a mixture of spiritual doctrine and careful organization, the Glebsigi now once more raise their sight-organs to what lies beyond.")
jehetma = Character.new(name: "Jehetma Dominion", photo: "https://stellaris.paradoxwikis.com/images/9/9d/Fungoid_massive_13.png", description: 'An "individual" among the Jehetma is actually a large colony of fungi that has developed sentience. Some of these colonies, generally those that have lived for thousands of years, stretch across several miles and rarely leave the surface of Jehet Prime, their homeworld (few ships are large enough to transport them).\nYounger colonies are not only smaller, but also tend to be more dynamic and mobile - they often spearhead the exploration and research efforts of the Jehetma, as well as any defensive measures that are regrettably undertaken when the Dominion is beset by aggressors.')
scyldari = Character.new(name: "Scyldari Confederacy", photo: "https://stellaris.paradoxwikis.com/images/a/a8/Mammalian_normal_06.png", description: "The Scyldari are aquatic mammalians originating from the archipelagos and deep oceans of Scyldaria. Although their early civilizations were mostly confined to the sea, they soon expanded onto what little landmass the planet had to offer.\nTheir society adapted accordingly, building an advanced industry that exploited the riches of the ocean floor without harming Scyldaria's delicate ecosystem. Scyldari philosophy is one of balance and moderation in all things, a lesson learned from having to nurse their limited resources when they were confined to the bottom of the sea.")
azaan = Character.new(name: "Kel-Azaan Republic", photo: "https://stellaris.paradoxwikis.com/images/8/8d/Arthropoid_normal_08.png", description: "The Kel-Azaan have developed a complex honor code and martial culture. They were once solitary predators preying on the great herds migrating between the watering holes of Azak. Over time, bands of Kel-Azaan began to gather to be able to take down larger prey. They eventually abandoned this solitary lifestyle in favor of cities and irrigated agriculture, but their martial traditions were never forgotten.")
maweer = Character.new(name: "Maweer Caretakers", photo: "https://stellaris.paradoxwikis.com/images/e/e5/Plantoid_14.png", description: "Legends claim that the homeworld of the Maweer was empty and barren when the first of their kind took root in the soil. Over the centuries, their nurturing care transformed the wastelands into a plant paradise that is now known as \"The Garden.\"\nUnlike many other species, the Maweer never developed any kind of urbanization. Their small communities are one with the forests, responsible for the maintenance of the local flora and fauna. The wisest of the Maweer have a chance to be elected \"Life-Giver,\" responsible for keeping peace and tranquility.")

puts "connecting chars and species"

man.specie = humanoid
man.save!
tzynn.specie = reptilian
tzynn.save!
yondarim.specie = avian
yondarim.save!
glebsig.specie = molluscoid
glebsig.save!
jehetma.specie = fungoid
jehetma.save!
scyldari.specie = mammalian
scyldari.save!
azaan.specie = arthropoid
azaan.save!
maweer.specie = plantoid
maweer.save!

puts "creating powers"

adaptive = Power.new(name: "Adaptive")
nomadic = Power.new(name: "Nomadic")
wasteful = Power.new(name: "Wasteful")
strong = Power.new(name: "Strong")
resilient = Power.new(name: "Resilient")
rapid_breeders = Power.new(name: "Rapid Breeders")
decadent = Power.new(name: "Decadent")
quarrelsome = Power.new(name: "Quarrelsome")
conformist = Power.new(name: "Conformists")
physicists = Power.new(name: "Natural Physicists")
sedentary = Power.new(name: "Sedentary")
enduring = Power.new(name: "Enduring")
conservationist = Power.new(name: "Conservationist")
resilient1 = Power.new(name: "Resilient")
slow_breeders = Power.new(name: "Slow Breeders")
ingenious = Power.new(name: "Ingenious")
communal = Power.new(name: "Communal")
strong1 = Power.new(name: "Strong")
charismatic = Power.new(name: "Charismatic")
sociologists = Power.new(name: "Natural Sociologists")
weak = Power.new(name: "Weak")
very_strong = Power.new(name: "Very Strong")
nomadic1 = Power.new(name: "Nomadic")
deviants = Power.new(name: "Deviants")
solitary = Power.new(name: "Solitary")
agrarian = Power.new(name: "Agrarian")
enduring1 = Power.new(name: "Enduring")
conservationist1 = Power.new(name: "Conservationist")
slow_breeders1 = Power.new(name: "Slow Breeders")

puts "connecting powers and chars"

adaptive.character = man
adaptive.save!
nomadic.character = man
nomadic.save!
wasteful.character = man
wasteful.save!
strong.character = tzynn
strong.save!
resilient.character = tzynn
resilient.save!
rapid_breeders.character = tzynn
rapid_breeders.save!
decadent.character = tzynn
decadent.save!
quarrelsome.character = tzynn
quarrelsome.save!
conformist.character = yondarim
conformist.save!
physicists.character = yondarim
physicists.save!
sedentary.character = glebsig
sedentary.save!
enduring.character = glebsig
enduring.save!
conservationist.character = glebsig
conservationist.save!
resilient1.character = glebsig
resilient1.save!
slow_breeders.character = jehetma
slow_breeders.save!
ingenious.character = jehetma
ingenious.save!
communal.character = jehetma
communal.save!
strong1.character = jehetma
strong1.save!
charismatic.character = scyldari
charismatic.save!
sociologists.character = scyldari
sociologists.save!
weak.character = scyldari
weak.save!
very_strong.character = azaan
very_strong.save!
nomadic1.character = azaan
nomadic1.save!
deviants.character = azaan
deviants.save!
solitary.character = azaan
solitary.save!
agrarian.character = maweer
agrarian.save!
enduring1.character = maweer
enduring1.save!
conservationist1.character = maweer
conservationist1.save!
slow_breeders1.character = maweer
slow_breeders1.save!

puts "finished"
