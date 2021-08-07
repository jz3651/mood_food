# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.create([
  {
    name: 'Pho Hung Vuong Saigon',
    location: '128 Hopkins St, Footscray',
    cuisine: 'Vietnamese',
    price: 50,
    description: 'Delicious Vietnamese Restaurant',
    rating: 4.4,
    mood_rating: 88,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Sapa Hills',
    location: '112 Hopkins St, Footscray',
    cuisine: 'Vietnamese',
    price: 100,
    description: 'Delicious Vietnamese Restaurant',
    rating: 4.2,
    mood_rating: 96,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Hao Phong',
    location: '136 Hopkins St, Footscray',
    cuisine: 'Vietnamese',
    price: 120,
    description: 'Delicious Vietnamese Restaurant',
    rating: 4.2,
    mood_rating: 84,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Huong Viet Vegetarian & Vegan',
    location: '36A Leeds St, Footscray',
    cuisine: 'Vietnamese',
    price: 80,
    description: 'Delicious Vietnamese Restaurant',
    rating: 4.6,
    mood_rating: 88,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Pho Tam',
    location: '7/9 Leeds St, Footscray',
    cuisine: 'Vietnamese',
    price: 100,
    description: 'Delicious Vietnamese Restaurant',
    rating: 4.5,
    mood_rating: 75,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Tipo 00',
    location: '361 Little Bourke St, Melbourne',
    cuisine: 'Italian',
    price: 50,
    description: 'Delicious Italian Restaurant',
    rating: 4.5,
    mood_rating: 60,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: '+39 Pizzeria',
    location: '362 Little Bourke St, Melbourne',
    cuisine: 'Italian',
    price: 100,
    description: 'Delicious Italian Restaurant',
    rating: 4.4,
    mood_rating: 50,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'DOC Pizza & Mozzarella Bar',
    location: '295 Drummond St, Carlton',
    cuisine: 'Italian',
    price: 120,
    description: 'Delicious Italian Restaurant',
    rating: 4.4,
    mood_rating: 40,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Maccaroni Trattoria Italiana',
    location: '10-16 Manchester Ln, Melbourne',
    cuisine: "Italian",
    price: 80,
    description: 'Delicious Italian Restaurant',
    rating: 4.3,
    mood_rating: 20,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Osteria Ilaria',
    location: '367 Little Bourke St, Melbourne',
    cuisine: 'Italian',
    price: 100,
    description: 'Delicious Italian Restaurant',
    rating: 4.3,
    mood_rating: 10,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Trippy Taco',
    location: '234 Gertrude St, Fitzroy',
    cuisine: 'Mexican',
    price: 50,
    description: 'Delicious Mexican Restaurant',
    rating: 4.3,
    mood_rating: 10,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'La Tortilleria',
    location: '72 Stubbs St, Kensington',
    cuisine: 'Mexican',
    price: 100,
    description: 'Delicious Mexican Restaurant',
    rating: 4.3,
    mood_rating: 20,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Mamasita',
    location: '11 Collins St, Melbourne',
    cuisine: 'Mexican',
    price: 120,
    description: 'Delicious Mexican Restaurant',
    rating: 4.3,
    mood_rating: 15,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Radio Mexico',
    location: '11-13 Carlisle St, St Kilda',
    cuisine: 'Mexican',
    price: 80,
    description: 'Delicious Mexican Restaurant',
    rating: 4.3,
    mood_rating: 12,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  },
  {
    name: 'Fonda',
    location: '236 Smith St, Collingwood',
    cuisine: 'Mexican',
    price: 100,
    description: 'Delicious Mexican Restaurant',
    rating: 4.3,
    mood_rating: 20,
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2
  }
])

Review.create([
    {
    restaurant_id: 2,
    title: "Absolutely delicious",
    rating: 5,
    source: "Google",
    reviewdate: "05/12/2015",
    description: "If you look arround Footscray, only this restaurant(sapa hill) have a various vietnamese delicious foods, we have been here many time and every time we call different dishes, and so suprise is all are absolutely delicious, 1, fast service2, the restaurant is clean, toilet is clean （show us about the hygiene)3, lovely and good service staff4, the food price is ok within arround Footscray5, lot of special dishes which another restsurant not supply or not delicious(eg. bun cha hanoi,bun moc thit,....)that is all the points to make me give them 5 star."
    },

    {
    restaurant_id: 2,
    title: "WOHOOOOOO",
    rating: 4,
    source: "Zomato",
    reviewdate: "05/12/2015",
    description: "Cracking food and a killer beer list. Staff are wonderful. Young bloke knows his beers and is interested in our beer tastes. WINNER. Worth a return train trip just to visit.."
    },

    {
    restaurant_id: 2,
    title: "GET FUCKED LOCKDOWN",
    rating: 5,
    source: "Yelp",
    reviewdate: "05/12/2015",
    description: "Came here for date night. Got crab banh canh (crab rice drop noodles) and the other half had pho bo. Place is super clean and love the decor. The restaurant also has that lovely char grill smell that took me back to one of my fave restaurants in Sydney (hai au in canley vale for those wondering). The banh canh was good. The basic broth was good and got better once I added the usual condiments. The pho bo is also good, but to be honest have had better. I think is place is a good all rounder vietnamese restaurant. The cafe sua da is reeeallly good that was the stand out item!I'll come back again and try out the spring rolls though!"
    },

    {
    restaurant_id: 2,
    title: "GET ON THE BEERS",
    rating: 5,
    source: "Google",
    reviewdate: "05/12/2015",
    description: "I love to try new things, do not get me wrong but when somewhere is as consistent and delicious as Sapa Hills I find myself walking past loads of Vietnamese restaurants in Footscray and heading back to this awesome favourite.  Sapa Hills was the first semi trendy Vietnamese to hit Footscray and their food, fast service and friendliness won me over.  The secret is out re this place and I would definitely book ahead especially if dining for more than two people.  My protips here are to order the Sapa Hill spring rolls and to try the duck stuffed with prawn meat.  It is to die for!!!  I have to say Sapa Hills is my go to for Vietnamese in the west :)"
    }

])
