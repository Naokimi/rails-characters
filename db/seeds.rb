# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying database"

Specie.destroy_all
Character.destroy_all
Power.destroy_all

puts "creating species"

humanoid = Specie.create!(name: "humanoid", photo: "https://i.redd.it/yrcu49r4thh11.jpg")
reptilian = Specie.create!(name: "reptilian", photo: "https://i.redd.it/b540eh8oshh11.jpg")
avian = Specie.create!(name: "avian", photo: "https://i.redd.it/ral2yjyfthh11.jpg")

puts "creating chars"

man = Character.new(name: "Commonwealth of Man", photo: "https://stellaris.paradoxwikis.com/images/6/6e/Human.png", descriptions: ["The UN-sponsored Ulysses Initiative oversaw the construction of six great ark ships in low Earth orbit at the end of the 21st century. The ships, carrying a quarter million colonist each, were sent through a recently discovered subspace phenomenon on the outer edge of the Oort Cloud - a small, unstable wormhole. None were heard from again, and the destabilized wormhole vanished.", "Yet unbeknownst to Earth, one of the ark ships survived the passage and established a flourishing colony. The pioneers who tamed this world were determined to realize humanity's manifest destiny - dominion over the galaxy at any cost."])
tzynn = Character.new(name: "Tzynn Empire", photo: "https://stellaris.paradoxwikis.com/images/d/d8/Reptilian_normal_09.png", descriptions: ["The Tzynn evolved from carnivorous, pack-hunting lizards that prowled the dunes of Tzynnia. They eventually developed a highly structured, hierarchical society that emphasized order and martial prowess above all else.", "By the time the Tzynn entered the industrial age, a series of devastating global wars launched by a particularly ruthless warlord had already seen the establishment of a single, world-spanning nation. From these humble beginnings, the illustrious and ever-lasting Tzynn Empire was born."])
yondarim = Character.new(name: "Kingdom of Yondarim", photo: "https://stellaris.paradoxwikis.com/images/f/fc/Avian_normal_10.png", descriptions: ["The proud Yondar are an old race, using their wings to soar high above the frozen peaks of Yondarim for more than 200,000 years before they developed rudimentary technology and formed their first few scattered civilizations.", "Once this development started, things progressed more rapidly and the Sky Clans grudgingly abandoned many of their most primitive traditions. The Yondar are highly spiritual and place great importance on religion, venerating their high kings as living gods."])
# glebsig = Character.create!(name: "Glebsig Foundation", species: "molluscoid", descriptions: ["Ever since the first Glebsigi lifted their sight-organs above the surface of the glacial lakes on Ladnah to peek at the stars, these inquisitive molluscoids have felt an affinity for the unknown. Much as their early ancestors' tentacles grasped and stroked after new objects on the chill alpine lakebeds of their homeworld, burgeoning Glebsigan society reached for technological innovation and spiritual enlightenment throughout the centuries that followed.", "A sedentary and enduring species, the Glebsigi have perhaps by necessity developed a complex yet highly effective bureaucratic apparatus for dealing with the intricacies of managing a globally unified society. Additionally, their lack of natural predators on Ladnah has led the Glebsigi to exist in a state of permanently optimistic curiosity regarding other lifeforms.", "Having established a firm societal foundation on Ladnah using a mixture of spiritual doctrine and careful organization, the Glebsigi now once more raise their sight-organs to what lies beyond."])
# jehetma = Character.create!(name: "Jehetma Dominion", species: "fungoid", descriptions: ['An "individual" among the Jehetma is actually a large colony of fungi that has developed sentience. Some of these colonies, generally those that have lived for thousands of years, stretch across several miles and rarely leave the surface of Jehet Prime, their homeworld (few ships are large enough to transport them).', "Younger colonies are not only smaller, but also tend to be more dynamic and mobile - they often spearhead the exploration and research efforts of the Jehetma, as well as any defensive measures that are regrettably undertaken when the Dominion is beset by aggressors."])
# scyldari = Character.create!(name: "Scyldari Confederacy", species: "mammalian", descriptions: ["The Scyldari are aquatic mammalians originating from the archipelagos and deep oceans of Scyldaria. Although their early civilizations were mostly confined to the sea, they soon expanded onto what little landmass the planet had to offer.", "Their society adapted accordingly, building an advanced industry that exploited the riches of the ocean floor without harming Scyldaria's delicate ecosystem. Scyldari philosophy is one of balance and moderation in all things, a lesson learned from having to nurse their limited resources when they were confined to the bottom of the sea."])

puts "connecting chars and species"

man.specie = humanoid
man.save!
tzynn.specie = reptilian
tzynn.save!
yondarim.specie = avian
yondarim.save!

puts "creating powers"

adaptive = Power.new(name: "Adaptive")
nomadic = Power.new(name: "Nomadic")
wasteful = Power.new(name: "Wasteful")
strong = Power.new(name: "Strong")
resilient = Power.new(name: "Resilient")
breeders = Power.new(name: "Rapid Breeders")
decadent = Power.new(name: "Decadent")
quarrelsome = Power.new(name: "Quarrelsome")
conformist = Power.new(name: "Conformists")
physicists = Power.new(name: "Natural Physicists")
slow = Power.new(name: "Slow Learners")

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
breeders.character = tzynn
breeders.save!
decadent.character = tzynn
decadent.save!
quarrelsome.character = tzynn
quarrelsome.save!
conformist.character = yondarim
conformist.save!
physicists.character = yondarim
physicists.save!
slow.character = yondarim
slow.save!

puts "finished"
