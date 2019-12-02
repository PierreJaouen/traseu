# db/seeds.rb

puts 'Cleaning database...'
User.destroy_all
Itinerary.destroy_all
City.destroy_all
ItineraryCity.destroy_all
Category.destroy_all
Spot.destroy_all
ItinerarySpot.destroy_all

puts 'Creating users...'
users_attributes = [
  {
    email: "ferdinand@email.com",
    password: "123456",
    first_name: "ferdinand"
  },
  {
    email: "pierre@email.com",
    password: "123456",
    first_name: "pierre"
  },
  {
    email: "sophie@email.com",
    password: "123456",
    first_name: "sophie"
  },
  {
    email: "yannick@email.com",
    password: "123456",
    first_name: "yannick"
  },
]

User.create!(users_attributes)

puts 'Creating Itineraries...'
itineraries_attributes = [
  {
    country: "Peru",
    experience: "party",
    budget: 1000,
    days: 15,
    user_id: 1
  },
  {
    country: "Peru",
    experience: "party",
    budget: 1000,
    days: 15,
    user_id: 1
  },
  {
    country: "Peru",
    experience: "party",
    budget: 1000,
    days: 15,
    user_id: 1
  },
  {
    country: "Peru",
    experience: "urban",
    budget: 1000,
    days: 15,
    user_id: 1
  },
  {
    country: "Peru",
    experience: "culture",
    budget: 1000,
    days: 15,
    user_id: 1
  },
  {
    country: "Peru",
    experience: "adventure",
    budget: 1000,
    days: 15,
    user_id: 1
  },
]

Itinerary.create!(itineraries_attributes)

puts 'Creating cities...'
city_attributes = [
  { name: "Cuzco" },
  { name: "Lima" },
  { name: "Ica" },
  { name: "Arequipa" },
  { name: "Puno" },
  { name: "Nazca" },
  { name: "Puerto maldonado" },
  { name: "Huaraz" },
  { name: "Iuaraz" },
  { name: "Mancora" },
]

City.create!(city_attributes)

puts 'Creating itinerary_cities...'
city_1 = City.find(1)
city_2 = City.find(2)
city_3 = City.find(3)
city_4 = City.find(4)
city_5 = City.find(5)
city_6 = City.find(6)
city_7 = City.find(7)
city_8 = City.find(8)
city_9 = City.find(9)
city_10 = City.find(10)

itinerary_cities_attributes = [
  { itinerary_id: 1, city: city_1 },
  { itinerary_id: 1, city: city_2 },
  { itinerary_id: 1, city: city_3 },
  { itinerary_id: 1, city: city_4 },
  { itinerary_id: 1, city: city_5 },
  { itinerary_id: 2, city: city_6 },
  { itinerary_id: 2, city: city_7 },
  { itinerary_id: 2, city: city_8 },
  { itinerary_id: 2, city: city_9 },
  { itinerary_id: 2, city: city_10 },
  { itinerary_id: 3, city: city_1 },
  { itinerary_id: 3, city: city_3 },
  { itinerary_id: 3, city: city_5 },
  { itinerary_id: 3, city: city_7 },
  { itinerary_id: 3, city: city_9 },
]

ItineraryCity.create!(itinerary_cities_attributes)

puts 'Creating categories...'
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

puts 'Creating spots...'
spots_attributes = [
  ############################ CUZCO ############################
  {
    title: "Hanz Craft Beer",
    address: "Portal de Carnes 216, Cusco, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:"$$",
    longitude:-71.9808861,
    latitude:-13.5159377,
    description:"Miss your old good burger, back to some classic with the Hanz Craft Beer Bar, get also local beer, straight from the Inca!",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Indigo Bar Restaurant",
    address: "first floor, Tecsecocha 415, Cusco, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:"$$$",
    longitude:-71.9824407,
    latitude:-13.515151,
    description:"Want a try local cuisine, go to Indigo Bar!",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Republica Del Pisco",
    address: "Calle Plateros 354, Cusco, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:"$",
    longitude:-71.9824715,
    latitude:-13.5158027,
    description:"Amazing bar with more than +60 different Pisco Sour",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Eco-View Bar",
    address: "Calle Tandapata 668, Cusco, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:"$$",
    longitude:-71.9754585,
    latitude:-13.5153496,
    description:"Get the best 360 view in town!",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Wild rover hostel",
    address: "Calle Cuesta Santa Ana 782. , Cusco, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:16,
    longitude:-71.9874187,
    latitude:-13.514518,
    description:"If you are looking for a fun, friendly hostel with a great vibe and the best parties, this is it. Top location with the best views – Don´t believe us? Ask the hundreds of people staying in Cusco who come just to see our view!",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "The Point Cusco",
    address: "Meson de La Estrella 172 , Cusco, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:24,
    longitude:-71.9825425,
    latitude:-13.5198854,
    description:"The Point Cusco was opened in the middle of 2006. Relax or party hard with other travellers in our colonial, spacious, brand new hostel.",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Intro Hostels Cuzco",
    address: "515, Cuesta de Sta. Ana 561, Cusco, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:18,
    longitude:-71.9861192,
    latitude:-13.5154581,
    description:"It´s known for been a real social place (activities and layout helps) but chill out too. In our converted 300 years old mansion, we emphasize a Social experience but where you can also have a good sleep (bar closes at 11pm)",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Puriwasi Cusco",
    address: "Cuichipunku 258 - Cuzco , Cusco, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:20,
    longitude:-71.9791526,
    latitude:-13.5218139,
    description:"Translated from Quechua, Puriwasi “The house of the traveler”, is located just 3 blocks to Plaza de Armas , the safest in the city.",
    category: Category.find_by(title: "hotel"),
  },
    {
    title: "Pisco Cuzco Tour",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:35,
    longitude:"",
    latitude:"",
    description:"Discover the different Pisco in an immersive tour of the city on those culture delicacy",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Salkenta Trail 1 day",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:100,
    longitude:"",
    latitude:"",
    description:"Ready to go to machu-pichu in a very short 1 day trip Salkenta trail is for you!",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "1 day trip ATV",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:60,
    longitude:"",
    latitude:"",
    description:"Want to have pure sensation with your peer, try the ATV for an entire day ",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Discovery of the inca Valley",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Cuzco"),
    price:40,
    longitude:"",
    latitude:"",
    description:"Want some culture after some exhaustive day in Cusco, try out the Inca Valley with our dedicated tour guide! ",
    category: Category.find_by(title: "activity"),
  },
  ############################ LIMA ############################
  {
    title: "Nuevo Mundo Bar",
    address: "Calle Manuel Bonilla 103, Miraflores 15074, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:"$",
    longitude:-77.0286846,
    latitude:-12.1198349,
    description:"Classic cuisine in the heart of Miraflores",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Estadio Restaurante",
    address: "Jirón de la Unión 1049, Cercado de Lima, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:"$$",
    longitude:-77.0379868,
    latitude:-12.052904,
    description:"Local cuisine made with love by el chef Juanito perez",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "La Basilica Restaurante",
    address: "Av. Primavera 640, Santiago de Surco, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:"$$$",
    longitude:-76.9889414,
    latitude:-12.1111414,
    description:"Miss your homecountry cuisine, La basilica offer a wide range of food",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Museo Del Pisco",
    address: "Jirón Junín 201, Cercado de Lima, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:"$$",
    longitude:-77.0322772,
    latitude:-12.1207357,
    description:"Peruvian cuisine with a lots of option to degust the best Pisco",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Pool Paradize",
    address: "85 District de Miraflores, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:17,
    longitude:-77.0242352,
    latitude:-12.124193,
    description:"Paradise, but in the city! Pool Paradise Lima is the only hostel in the safe tourist district of Miraflores with an outdoor pool! Book now and enjoy the summer in Lima with us! ",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Loki Hostel",
    address: "Calle José Galvez 576, Miraflores 15074, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:22,
    longitude:-77.0338889,
    latitude:-12.1201969,
    description:"Loki - we make your travels easy, fun and social. In the “City of Kings”, a perfect and centric spot to relax, meet other travellers and locals.",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Puriwasi hostel",
    address: "Av. la Paz 174, Miraflores 15074, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:14,
    longitude:-77.0290278,
    latitude:-12.1198545,
    description:"Puriwasi offers top quality affordable accommodation in superb location. Right in the center of Miraflores, we are 2 blocks from the Metropolitano Bus Station",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "The Prime Spots",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:18,
    longitude:-77.0334339,
    latitude:-12.1129596,
    description:"After more than ten years of experience of knowing what the backpacker traveler is really looking for, we decided to create Prime Spot, the best service in terms of accommodation of this type.",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Bicycle tour - Miraflores",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:18,
    longitude:"",
    latitude:"",
    description:"Want to discover the old LIMA Miraflores by bicycle",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Surf day trip",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:30,
    longitude:"",
    latitude:"",
    description:"A big Sweel, one day with the best surfer from Lima, this is the place to be!",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Pub Crawl - Miraflores",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:20,
    longitude:"",
    latitude:"",
    description:"Big night in Miraflores, Its the time to visit 4 bar in a crasy night! let's go lads!",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Peruvian folklore!",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Lima"),
    price:25,
    longitude:"",
    latitude:"",
    description:"Tradition Peruvian folklore. Lima is the place to be for a cultural / party !",
    category: Category.find_by(title: "activity"),
  },
  ############################ AREQUIPA ############################
  {
    title: "Alma Bar Restaurant",
    address: "Calle Ugarte 403, Arequipa, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:"$$$",
    longitude:-71.5408209,
    latitude:-16.3953953,
    description:"Near by the plaza de Armas, if you want to test the Arequipa's delicacy, Alma is one of the best spot",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Hatumpa",
    address: "Calle Ugarte 207, Cercado De Arequipa, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:"$",
    longitude:-71.5408209,
    latitude:-16.3953953,
    description:"Local cuisine, can't be disapointed by Hatumpa",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "El Tio Dario",
    address: "Callejón del Cabildo 100, Yanahuara, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:"$$",
    longitude:-71.5445821,
    latitude:-16.3856723,
    description:"The well know churaseceria of Arequipa is found in El tio Dario",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "La Nueva Palomino",
    address: "Leoncio Prado 122, Yanahuara, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:"$",
    longitude:-71.5417352,
    latitude:-16.387075,
    description:"Local cuisine fusion with asian food. A classic peruvian mix",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "MB Hostel Arequipa",
    address: "Calle Mercaderes 135/A, Arequipa, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:20,
    longitude:-71.5377525,
    latitude:-16.3986302,
    description:"Amazing Hostel Arequipa has new location, now just 20 meters from the Plaza De Armas a priviliged location.",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Wild Rover Hostel Arequipa",
    address: "Calle Ugarte 111, Arequipa, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:22,
    longitude:-71.5369455,
    latitude:-16.3965962,
    description:"Wild Rover Arequipa offers a fun, sociable and full of atmosphere hostel right in the heart of Arequipa city. ",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Arequipay - packers hostel",
    address: " Pasaje O Higgins No. 224 Vallecito , Arequipa, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:18,
    longitude:-71.5430341,
    latitude:-16.4020209,
    description:"Chill out with like-minded people from around the world that travel without hassles and share laughs and experiences",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Dragonfly Hostel",
    address: "Calle Consuelo, 209, Arequipa, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:20,
    longitude:-71.5399057,
    latitude:-16.401406,
    description:"Everything you need is here, in Dragonfly Hostels Arequipa. Our aim is to make you feel at home. Ranging from spacious dorms to intimate private rooms, we have the right accommodation for you! ",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "One day trekking Colca",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:60,
    longitude:"",
    latitude:"",
    description:"Want to see Condors and dive into the second deepest Canyon in the world, go visit Colca Canyon",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Qochamama Party",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:25,
    longitude:"",
    latitude:"",
    description:"Full Arequipa experience with the classic Qochamama night!",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Peruvian Dance at Casona",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:"",
    longitude:"",
    latitude:"",
    description:"Peru is well know for traditional, what about a full evening learning the bases?",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Pimen river attractions",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Arequipa"),
    price:50,
    longitude:"",
    latitude:"",
    description:"Want to have some fun & extrem sensation, the Piment river is for you",
    category: Category.find_by(title: "activity"),
  },
  ############################ ICA ############################
  {
    title: "Tambo Tacama",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:"$$",
    longitude:"",
    latitude:"",
    description:"",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "La Olla de Juanita",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:"$$$",
    longitude:"",
    latitude:"",
    description:"Fish fresh from ica, simple cuisine",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Restaurant El Pallar",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:"$",
    longitude:"",
    latitude:"",
    description:"",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Wild Olive Trattoria & Guest House",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:"$$",
    longitude:"",
    latitude:"",
    description:"",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Carola Lodge",
    address: "Av. Perotti S/N, Balneario e Huacachina, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:30,
    longitude:-75.7665557,
    latitude:-14.0866265,
    description:"Carola Lodge is a renovated hotel is surrounded by a huge sand dune which you can climb without any problem, we are just a few steps from the Huacachina Lagoon",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Banana's Adventure - Huacachina",
    address: "Calle Angela de Perotti s/n ",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:20,
    longitude:-75.7667127,
    latitude:-14.086852,
    description:"Banana's is newly hotel in the heart of the Oasis. Everything is made to welcome you and let you enjoy what the oasis has to offer!",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Wild Rover Backpackers Hostel Huacachina",
    address: "Angela de Perotti S/N Balneario, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:19,
    longitude:-75.7648962,
    latitude:-14.0865126,
    description:"Are you looking for the ultimate experience? With pool parties, ice cold beers, poolside bar, right in the heart of the oasis??? You have found it!",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "The Upcycle Hostel",
    address: "Urb. La Estancia F-5 , Huacachina, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:38,
    longitude:-75.7568577,
    latitude:-14.085315,
    description:"Hello traveler…!!! We are glad you are checking us that means that we are doing a good job…!",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Buggy Desert tour Huacachina",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:30,
    longitude:"",
    latitude:"",
    description:"Crasy Buggy experience in the heart of the oasis!",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Surf in the Dunes!",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:25,
    longitude:"",
    latitude:"",
    description:"Never experience SandBoard ? Ica is known for the biggest dune in South America!",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Pub-crawl ICA",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:30,
    longitude:"",
    latitude:"",
    description:" 3 bars, a wild night in the oasis!",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Visit of Nazca line",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Ica"),
    price:50,
    longitude:"",
    latitude:"",
    description:"Those lines has been here since millenaries. Experience the strange mysterie around it",
    category: Category.find_by(title: "activity"),
  },
  ############################ PUNO ############################
  {
    title:"Inca Bar",
    address:"Lima 339, Puno 21510, Peru",
    zip_code:"zip",
    city: City.find_by(name: "Puno"),
    price:"$",
    longitude:-70.0278824,
    latitude:-15.8403726,
    description:"New bar in town, large selection of amazing pisco cocktails",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "La Table del Inca",
    address:"Ancash 239, Puno 21001, Peru",
    zip_code:"zip",
    city: City.find_by(name: "Puno"),
    price:"$$$",
    longitude:-70.0298322,
    latitude:-15.8403726,
    description:"Want to try the local cuisine from Puno. This is a place to try",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Mojsa Restaurant",
    address: "Lima, Puno 21001, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:"$$",
    longitude:-70.0626822,
    latitude:-15.8403633,
    description:"Miss your homecountry cuisine, Mojsa is the perfect place",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Los Uros",
    address: "Isla Esteves s/n, Lago Titicaca, Puno, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:"$",
    longitude:-70.0280579,
    latitude:-15.8278238,
    description:"Located in an Island, the 360view of the Uros restaurant is unreal. ",
    category: Category.find_by(title: "restaurant"),
  },
  {
    title: "Sol Plaza Hotel",
    address: "Jr. Puno N°307, Puno 21001, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:40,
    longitude:-70.0292115,
    latitude:-15.8406116,
    description:"",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Uros lake Titicaca Lodge",
    address: "Titicaca, Puno, Peru",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:40,
    longitude:-69.9764087,
    latitude:-15.820714,
    description:"Wonderfull view on the Titicaca Lake, this hotel offer a wide range of activities",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Hotel Rosario Lago Ticicaca",
    address: "Avenida Costanera Esq Rigoberto Paredes, Copacabana, Bolivia",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:60,
    longitude:"",
    latitude:"",
    description:"Amazing view, unbeatable location and reasonable price. Rosario is the perfect place to discover what has to offer the Ticicaca lake",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Ecolodge la Estancia",
    address: "Lago Titicaca, Isla del Sol, Bolivia",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:70,
    longitude:-69.1520687,
    latitude:-16.02915,
    description:"Want to live like a local, Ecolodge is for you!",
    category: Category.find_by(title: "hotel"),
  },
  {
    title: "Fishing in Ticicaca",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:60,
    longitude:"",
    latitude:"",
    description:"Catch the best fish at 3500meters in the biggest lake in the world",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Boat tour Titicaca",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:80,
    longitude:"",
    latitude:"",
    description:"All day to discover the mystery and beauty of the famous lac Titicaca",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Visit of the Isla de la Luna",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:"",
    longitude:"",
    latitude:"",
    description:"Isla de la luna for an entire day of history between bolivia & Peru",
    category: Category.find_by(title: "activity"),
  },
  {
    title: "Jirón Lima tour",
    address: "something",
    zip_code: "zip",
    city: City.find_by(name: "Puno"),
    price:30,
    longitude:"",
    latitude:"",
    description:"Discover the heart of the Puno City with a guide",
    category: Category.find_by(title: "activity"),
  }
]

Spot.create!(spots_attributes)

puts 'Creating itinerary_spots...'
spot_1 = Spot.find(1)

itinerary_spots_attributes = [
  {
    itinerary_id: 1,
    spot: spot_1,
    days: 3
  },
]

ItinerarySpot.create!(itinerary_spots_attributes)

puts 'Finished!'
