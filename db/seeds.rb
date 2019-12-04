# db/seeds.rb

puts 'cleaning database...'
User.destroy_all
Itinerary.destroy_all
City.destroy_all
ItineraryCity.destroy_all
Category.destroy_all
Spot.destroy_all
ItinerarySpot.destroy_all

puts 'creating users...'
users_attributes = [
  {
    email: "ferdinand@email.com",
    password: "123456",
    first_name: "ferdinand",
    following: 142,
    follower: 67,
    presentation: 'Hi there ! My idea is that I can help anyone; from someone that has never traveled or done a backpacking trip before to someone that has already traveled a lot but still might find some good advice on this site that can help him or her on the next adventure. And as a philosopher once said: "I know that I know nothing." Even after all that I have already traveled (but believe me, compared to some people that I’ve met, I’ve still only seen very little of the scope of the world), there are still a lot of things that I do not know as I am always learning and developing myself as a person.',
    rating: "3",
    country: "Poland, Chile, Mexico, New York",
    itineraryofuser: "Party in Peru",
    countryoforigin: "France"
  },
  {
    email: "pierre@email.com",
    password: "123456",
    first_name: "pierre",
    following: 121,
    follower: 76,
    presentation: 'Hello, you! Anyone can backpack as there are trips to suit any size wallet. Nowadays, luxurious backpacking is becoming "fashionable" where the travelers use taxi as their principal mode of transportation and stay in hostels that are more expensive than 3-star hotels!! However, there are still other backpackers that travel the world hitchhiking and staying in the houses of strangers using couchsurfing and finish their entire trip with minimal cost. For others, like myself, there is a middle ground where I try to save on transportation and accommodation, but I don’t keep my wallet closed when it’s time to have fun and adventure. For me, as long as it takes you out of your comfort zone, it is worth trying.',
    rating: "3",
    country: "Belgium, Peru, Canada, New York",
    itineraryofuser: "Party in Peru",
    countryoforigin: "Chile"
  },
  {
    email: "sophie@email.com",
    password: "123456",
    first_name: "sophie",
    following: 32,
    follower: 16,
    presentation: "Welcome! Although I really like backpacking as it is the most economical way of seeing the world that I have found, this does not mean that I don’t like other forms of travel. For me, the important thing is to be in a new place with the opportunity to meet other people and to see cultures and customs different from those that I already know. Therefore, the type of the trip doesn’t matter to me whether it be a package to Disneyland, a luxurious beach resort with my family, a Caribbean cruise, or a ski trip with friends. I like to explore the world, however it may be.",
    rating: "3",
    country: "France, Peru, Canada, New York, Japan",
    itineraryofuser: "Urban in New York",
    countryoforigin: "France"
  },
  {
    email: "yannick@email.com",
    password: "123456",
    first_name: "yannick",
    following: 122,
    follower: 86,
    presentation: 'Nice to meet you! Certainly, no matter what type of trip I am doing, I always do a Free Walking Tour if they are available in the city that I am visiting… if you have never heard of them, I will explain them more on my site as they are something not to be missed!  I will also keep a Blog with some advice about specific locations, general travel information, and some interesting stories that have happened during my wanderings. Well, that’s all for now folks. If you would like to know more about me and how I "left the system" to begin traveling around the world, continue reading below.',
    rating: "3",
    country: "Spain, Korea, Salvador, Peru, Canada, New York",
    itineraryofuser: "Culture in Korea",
    countryoforigin: "Belgium"
  },
]

User.create!(users_attributes)

puts 'creating itineraries...'
user_demo = User.find_by(email: "ferdinand@email.com")
itineraries_attributes = [
  {
    country: "peru",
    experience: "party",
    budget: 1000,
    days: 15,
    user_id: user_demo.id,
    title: "",
    description: "",
  },
  {
    country: "peru",
    experience: "party",
    budget: 1000,
    days: 15,
    user_id: user_demo.id,
    title: "",
    description: "",
  },
  {
    country: "peru",
    experience: "party",
    budget: 1000,
    days: 15,
    user_id: user_demo.id,
    title: "",
    description: "",
  },
  {
    country: "peru",
    experience: "urban",
    budget: 1000,
    days: 15,
    user_id: user_demo.id
  },
  {
    country: "peru",
    experience: "culture",
    budget: 1000,
    days: 15,
    user_id: user_demo.id
  },
  {
    country: "peru",
    experience: "adventure",
    budget: 1000,
    days: 15,
    user_id: user_demo.id
  },
]

Itinerary.create!(itineraries_attributes)

puts 'creating cities...'
city_attributes = [
  {
    name: "cuzco",
    address: "cuzco peru",
    description: "",
    image: ""
  },
  {
    name: "lima",
    address: "lima peru",
    description: "",
    image: ""
  },
  {
    name: "ica",
    address: "ica peru",
    description: "",
    image: ""
  },
  {
    name: "arequipa",
    address: "arequipa peru",
    description: "",
    image: ""
  },
  {
    name: "puno",
    address: "av la torre 224, puno 21001, peru",
    description: "",
    image: ""
  },
  {
    name: "huaraz",
    address: "huaraz peru",
    description: "",
    image: ""
  },
  {
    name: "iquitos",
    address: "iquitos peru",
    description: "",
    image: ""
  },
  {
    name: "mancora",
    address: "mancora peru",
    description: "",
    image: ""
  },
  {
    name: "ayacucho",
    address: "ayacucho peru",
    description: "",
    image: ""
  },
  {
    name: "puerto maldonado",
    address: "puerto maldonado peru",
    description: "",
    image: ""
  },
]

City.create!(city_attributes)

puts 'creating itinerary_cities...'
city_1 = City.find_by(name: "cuzco")
city_2 = City.find_by(name: "lima")
city_3 = City.find_by(name: "ica")
city_4 = City.find_by(name: "arequipa")
city_5 = City.find_by(name: "puno")
city_6 = City.find_by(name: "huaraz")
city_7 = City.find_by(name: "iquitos")
city_8 = City.find_by(name: "mancora")
city_9 = City.find_by(name: "ayacucho")
city_10 = City.find_by(name: "puerto maldonado")

country = "peru"
experience = "party"
itinerary_1 = Itinerary.where("country = ? AND experience = ?", country, experience).first
itinerary_2 = Itinerary.where("country = ? AND experience = ?", country, experience).second
itinerary_3 = Itinerary.where("country = ? AND experience = ?", country, experience).third

itinerary_cities_attributes = [
  { itinerary: itinerary_1, city: city_1 },
  { itinerary: itinerary_1, city: city_2 },
  { itinerary: itinerary_1, city: city_3 },
  { itinerary: itinerary_1, city: city_4 },
  { itinerary: itinerary_1, city: city_5 },
  { itinerary: itinerary_2, city: city_6 },
  { itinerary: itinerary_2, city: city_7 },
  { itinerary: itinerary_2, city: city_8 },
  { itinerary: itinerary_2, city: city_9 },
  { itinerary: itinerary_2, city: city_10 },
  { itinerary: itinerary_3, city: city_1 },
  { itinerary: itinerary_3, city: city_3 },
  { itinerary: itinerary_3, city: city_5 },
  { itinerary: itinerary_3, city: city_7 },
  { itinerary: itinerary_3, city: city_9 },
]

ItineraryCity.create!(itinerary_cities_attributes)

puts 'creating categories...'
category_attributes = [
  {
    title: "restaurant"
  },
  {
    title: "hotel"
  },
  {
    title: "activity"
  },
]

Category.create!(category_attributes)

puts 'creating spots...'
spots_attributes = [
  ############################ cuzco ############################
  {
    title: "hanz craft beer",
    address: "portal de carnes 216, cusco, peru",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:"$$",
    longitude:-71.9808861,
    latitude:-13.5159377,
    description:"miss your old good burger, back to some classic with the hanz craft beer bar, get also local beer, straight from the inca!",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "indigo bar restaurant",
    address: "first floor, tecsecocha 415, cusco, peru",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:"$$$",
    longitude:-71.9824407,
    latitude:-13.515151,
    description:"want a try local cuisine, go to indigo bar!",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "republica del pisco",
    address: "calle plateros 354, cusco, peru",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:"$",
    longitude:-71.9824715,
    latitude:-13.5158027,
    description:"amazing bar with more than +60 different pisco sour",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "eco-view bar",
    address: "calle tandapata 668, cusco, peru",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:"$$",
    longitude:-71.9754585,
    latitude:-13.5153496,
    description:"get the best 360 view in town!",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "wild rover hostel",
    address: "calle cuesta santa ana 782. , cusco, peru",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:16,
    longitude:-71.9874187,
    latitude:-13.514518,
    description:"if you are looking for a fun, friendly hostel with a great vibe and the best parties, this is it. top location with the best views – don´t believe us? ask the hundreds of people staying in cusco who come just to see our view!",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "the point cusco",
    address: "meson de la estrella 172 , cusco, peru",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:24,
    longitude:-71.9825425,
    latitude:-13.5198854,
    description:"the point cusco was opened in the middle of 2006. relax or party hard with other travellers in our colonial, spacious, brand new hostel.",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "intro hostels cuzco",
    address: "515, cuesta de sta. ana 561, cusco, peru",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:18,
    longitude:-71.9861192,
    latitude:-13.5154581,
    description:"it´s known for been a real social place (activities and layout helps) but chill out too. in our converted 300 years old mansion, we emphasize a social experience but where you can also have a good sleep (bar closes at 11pm)",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "puriwasi cusco",
    address: "cuichipunku 258 - cuzco , cusco, peru",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:20,
    longitude:-71.9791526,
    latitude:-13.5218139,
    description: 'translated from quechua, puriwasi "the house of the traveler", is located just 3 blocks to plaza de armas , the safest in the City.',
    category: Category.find_by(title: "hotel"),
    image: ""
  },
    {
    title: "pisco cuzco tour",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:35,
    longitude:"",
    latitude:"",
    description:"discover the different pisco in an immersive tour of the city on those culture delicacy",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "salkenta trail 1 day",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:100,
    longitude:"",
    latitude:"",
    description:"ready to go to machu-pichu in a very short 1 day trip salkenta trail is for you!",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "1 day trip atv",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:60,
    longitude:"",
    latitude:"",
    description:"want to have pure sensation with your peer, try the atv for an entire day ",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "discovery of the inca valley",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "cuzco"),
    price:40,
    longitude:"",
    latitude:"",
    description:"want some culture after some exhaustive day in cusco, try out the inca valley with our dedicated tour guide! ",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  ############################ lima ############################
  {
    title: "nuevo mundo bar",
    address: "calle manuel bonilla 103, miraflores 15074, peru",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:"$",
    longitude:-77.0286846,
    latitude:-12.1198349,
    description:"classic cuisine in the heart of miraflores",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "estadio restaurante",
    address: "jirón de la unión 1049, cercado de lima, peru",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:"$$",
    longitude:-77.0379868,
    latitude:-12.052904,
    description:"local cuisine made with love by el chef juanito perez",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "la basilica restaurante",
    address: "av. primavera 640, santiago de surco, peru",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:"$$$",
    longitude:-76.9889414,
    latitude:-12.1111414,
    description:"miss your homecountry cuisine, la basilica offer a wide range of food",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "museo del pisco",
    address: "jirón junín 201, cercado de lima, peru",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:"$$",
    longitude:-77.0322772,
    latitude:-12.1207357,
    description:"peruvian cuisine with a lots of option to degust the best pisco",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "pool paradize",
    address: "85 district de miraflores, peru",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:17,
    longitude:-77.0242352,
    latitude:-12.124193,
    description:"paradise, but in the city! pool paradise lima is the only hostel in the safe tourist district of miraflores with an outdoor pool! book now and enjoy the summer in lima with us! ",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "loki hostel",
    address: "calle josé galvez 576, miraflores 15074, peru",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:22,
    longitude:-77.0338889,
    latitude:-12.1201969,
    description: 'loki - we make your travels easy, fun and social. in the "city of kings", a perfect and centric spot to relax, meet other travellers and locals.',
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "puriwasi hostel",
    address: "av. la paz 174, miraflores 15074, peru",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:14,
    longitude:-77.0290278,
    latitude:-12.1198545,
    description:"puriwasi offers top quality affordable accommodation in superb location. right in the center of miraflores, we are 2 blocks from the metropolitano bus station",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "the prime spots",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:18,
    longitude:-77.0334339,
    latitude:-12.1129596,
    description:"after more than ten years of experience of knowing what the backpacker traveler is really looking for, we decided to create prime spot, the best service in terms of accommodation of this type.",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "bicycle tour - miraflores",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:18,
    longitude:"",
    latitude:"",
    description:"want to discover the old lima miraflores by bicycle",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "surf day trip",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:30,
    longitude:"",
    latitude:"",
    description:"a big sweel, one day with the best surfer from lima, this is the place to be!",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "pub crawl - miraflores",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:20,
    longitude:"",
    latitude:"",
    description:"big night in miraflores, its the time to visit 4 bar in a crasy night! let's go lads!",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "peruvian folklore!",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "lima"),
    price:25,
    longitude:"",
    latitude:"",
    description:"tradition peruvian folklore. lima is the place to be for a cultural / party !",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  ############################ arequipa ############################
  {
    title: "alma bar restaurant",
    address: "calle ugarte 403, arequipa, peru",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:"$$$",
    longitude:-71.5408209,
    latitude:-16.3953953,
    description:"near by the plaza de armas, if you want to test the arequipa's delicacy, alma is one of the best spot",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "hatumpa",
    address: "calle ugarte 207, cercado de arequipa, peru",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:"$",
    longitude:-71.5408209,
    latitude:-16.3953953,
    description:"local cuisine, can't be disapointed by hatumpa",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "el tio dario",
    address: "callejón del cabildo 100, yanahuara, peru",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:"$$",
    longitude:-71.5445821,
    latitude:-16.3856723,
    description:"the well know churaseceria of arequipa is found in el tio dario",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "la nueva palomino",
    address: "leoncio prado 122, yanahuara, peru",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:"$",
    longitude:-71.5417352,
    latitude:-16.387075,
    description:"local cuisine fusion with asian food. a classic peruvian mix",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "mb hostel arequipa",
    address: "calle mercaderes 135/a, arequipa, peru",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:20,
    longitude:-71.5377525,
    latitude:-16.3986302,
    description:"amazing hostel arequipa has new location, now just 20 meters from the plaza de armas a priviliged location.",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "wild rover hostel arequipa",
    address: "calle ugarte 111, arequipa, peru",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:22,
    longitude:-71.5369455,
    latitude:-16.3965962,
    description:"wild rover arequipa offers a fun, sociable and full of atmosphere hostel right in the heart of arequipa City. ",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "arequipay - packers hostel",
    address: " pasaje o higgins no. 224 vallecito , arequipa, peru",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:18,
    longitude:-71.5430341,
    latitude:-16.4020209,
    description:"chill out with like-minded people from around the world that travel without hassles and share laughs and experiences",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "dragonfly hostel",
    address: "calle consuelo, 209, arequipa, peru",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:20,
    longitude:-71.5399057,
    latitude:-16.401406,
    description:"everything you need is here, in dragonfly hostels arequipa. our aim is to make you feel at home. ranging from spacious dorms to intimate private rooms, we have the right accommodation for you! ",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "one day trekking colca",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:60,
    longitude:"",
    latitude:"",
    description:"want to see condors and dive into the second deepest canyon in the world, go visit colca canyon",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "qochamama party",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:25,
    longitude:"",
    latitude:"",
    description:"full arequipa experience with the classic qochamama night!",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "peruvian dance at casona",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:"",
    longitude:"",
    latitude:"",
    description:"peru is well know for traditional, what about a full evening learning the bases?",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "pimen river attractions",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "arequipa"),
    price:50,
    longitude:"",
    latitude:"",
    description:"want to have some fun & extrem sensation, the piment river is for you",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  ############################ ica ############################
  {
    title: "tambo tacama",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:"$$",
    longitude:"",
    latitude:"",
    description:"",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "la olla de juanita",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:"$$$",
    longitude:"",
    latitude:"",
    description:"fish fresh from ica, simple cuisine",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "restaurant el pallar",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:"$",
    longitude:"",
    latitude:"",
    description:"",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "wild olive trattoria & guest house",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:"$$",
    longitude:"",
    latitude:"",
    description:"",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "carola lodge",
    address: "av. perotti s/n, balneario e huacachina, peru",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:30,
    longitude:-75.7665557,
    latitude:-14.0866265,
    description:"carola lodge is a renovated hotel is surrounded by a huge sand dune which you can climb without any problem, we are just a few steps from the huacachina lagoon",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "banana's adventure - huacachina",
    address: "calle angela de perotti s/n ",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:20,
    longitude:-75.7667127,
    latitude:-14.086852,
    description:"banana's is newly hotel in the heart of the oasis. everything is made to welcome you and let you enjoy what the oasis has to offer!",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "wild rover backpackers hostel huacachina",
    address: "angela de perotti s/n balneario, peru",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:19,
    longitude:-75.7648962,
    latitude:-14.0865126,
    description:"are you looking for the ultimate experience? with pool parties, ice cold beers, poolside bar, right in the heart of the oasis??? you have found it!",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "the upcycle hostel",
    address: "urb. la estancia f-5 , huacachina, peru",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:38,
    longitude:-75.7568577,
    latitude:-14.085315,
    description:"hello traveler…!!! we are glad you are checking us that means that we are doing a good job…!",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "buggy desert tour huacachina",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:30,
    longitude:"",
    latitude:"",
    description:"crasy buggy experience in the heart of the oasis!",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "surf in the dunes!",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:25,
    longitude:"",
    latitude:"",
    description:"never experience sandboard ? ica is known for the biggest dune in south america!",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "pub-crawl ica",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:30,
    longitude:"",
    latitude:"",
    description:" 3 bars, a wild night in the oasis!",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "visit of nazca line",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "ica"),
    price:50,
    longitude:"",
    latitude:"",
    description:"those lines has been here since millenaries. experience the strange mysterie around it",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  ############################ puno ############################
  {
    title:"inca bar",
    address:"lima 339, puno 21510, peru",
    zip_code:"zip",
    city: City.find_by(name: "puno"),
    price:"$",
    longitude:-70.0278824,
    latitude:-15.8403726,
    description:"new bar in town, large selection of amazing pisco cocktails",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "la table del inca",
    address:"ancash 239, puno 21001, peru",
    zip_code:"zip",
    city: City.find_by(name: "puno"),
    price:"$$$",
    longitude:-70.0298322,
    latitude:-15.8403726,
    description:"want to try the local cuisine from puno. this is a place to try",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "mojsa restaurant",
    address: "lima, puno 21001, peru",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price:"$$",
    longitude:-70.0626822,
    latitude:-15.8403633,
    description:"miss your homecountry cuisine, mojsa is the perfect place",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "los uros",
    address: "isla esteves s/n, lago titicaca, puno, peru",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price:"$",
    longitude:-70.0280579,
    latitude:-15.8278238,
    description:"located in an island, the 360view of the uros restaurant is unreal. ",
    category: Category.find_by(title: "restaurant"),
    image: ""
  },
  {
    title: "sol plaza hotel",
    address: "jr. puno n°307, puno 21001, peru",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price:40,
    longitude:-70.0292115,
    latitude:-15.8406116,
    description:"",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "uros lake titicaca lodge",
    address: "titicaca, puno, peru",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price:40,
    longitude:-69.9764087,
    latitude:-15.820714,
    description:"wonderfull view on the titicaca lake, this hotel offer a wide range of activities",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "hotel rosario lago ticicaca",
    address: "avenida costanera esq rigoberto paredes, copacabana, bolivia",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price:60,
    longitude:"",
    latitude:"",
    description:"amazing view, unbeatable location and reasonable price. rosario is the perfect place to discover what has to offer the ticicaca lake",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "ecolodge la estancia",
    address: "lago titicaca, isla del sol, bolivia",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price:70,
    longitude:-69.1520687,
    latitude:-16.02915,
    description:"want to live like a local, ecolodge is for you!",
    category: Category.find_by(title: "hotel"),
    image: ""
  },
  {
    title: "fishing in ticicaca",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price:60,
    longitude:"",
    latitude:"",
    description:"catch the best fish at 3500meters in the biggest lake in the world",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "boat tour titicaca",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price:80,
    longitude:"",
    latitude:"",
    description:"all day to discover the mystery and beauty of the famous lac titicaca",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "visit of the isla de la luna",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price:"",
    longitude:"",
    latitude:"",
    description:"isla de la luna for an entire day of history between bolivia & peru",
    category: Category.find_by(title: "activity"),
    image: ""
  },
  {
    title: "jirón lima tour",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "puno"),
    price: 30,
    longitude:"",
    latitude:"",
    description:"discover the heart of the puno city with a guide",
    category: Category.find_by(title: "activity"),
    image: ""
  },
]

Spot.create!(spots_attributes)

puts 'creating itinerary_spots...'

itinerary_spots_attributes = [
  {
    itinerary: Itinerary.first,
    spot: Spot.first,
    days: 3
  },
]

ItinerarySpot.create!(itinerary_spots_attributes)

puts 'finished!'
