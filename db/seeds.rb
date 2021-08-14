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
    description: 'An intimate eatery popular amongst locals for their piping hot bowls of pho',
    rating: 4.4,
    mood_rating: 88,
    mood_name: "Romantic",
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2,
    picture: "https://source.unsplash.com/Jb8A-y2dVOE"
  },
  {
    name: 'Sapa Hills',
    location: '112 Hopkins St, Footscray',
    cuisine: 'Vietnamese',
    price: 100,
    description: 'Perfect for date night, Asian food with a modern twist on the menu',
    rating: 4.2,
    mood_rating: 96,
    mood_name: "Romantic",
    date_rating: 5,
    social_rating: 3,
    rush_rating: 5,
    picture: "https://source.unsplash.com/5goCmtLcimI"
  },
  {
    name: 'Hao Phong',
    location: '136 Hopkins St, Footscray',
    cuisine: 'Vietnamese',
    price: 120,
    description: 'An extensive menu covering all basis of Vietnamese cuisine...',
    rating: 4.2,
    mood_rating: 84,
    mood_name: "Romantic",
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2,
    picture: "https://source.unsplash.com/0BhsN70JVA8"
  },
  {
    name: 'Huong Viet Vegetarian & Vegan',
    location: '36A Leeds St, Footscray',
    cuisine: 'Vietnamese',
    price: 80,
    description: 'Traditional Vietnamese dishes with a difference, the entire menu is vegetarian or vegan',
    rating: 4.6,
    mood_rating: 88,
    mood_name: "Romantic",
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2,
    picture: "https://source.unsplash.com/YkyDvP4OY6M"
  },
  {
    name: 'Pho Tam',
    location: '7/9 Leeds St, Footscray',
    cuisine: 'Vietnamese',
    price: 100,
    description: 'Phoking great',
    rating: 4.5,
    mood_rating: 75,
    mood_name: "Romantic",
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2,
    picture: "https://source.unsplash.com/L1ZhjK-R6uc"
  },
  {
    name: 'Tipo 00',
    location: '361 Little Bourke St, Melbourne',
    cuisine: 'Italian',
    price: 50,
    description: 'Cosy little fitout propped along Little Bourke Street, hand making pasta and serving authentic Italian since 2014',
    rating: 4.5,
    mood_rating: 60,
    mood_name: "Romantic",
    date_rating: 4,
    social_rating: 4,
    rush_rating: 3,
    picture: "https://source.unsplash.com/O7ZMSQz6ink"
  },
  {
    name: '+39 Pizzeria',
    location: '362 Little Bourke St, Melbourne',
    cuisine: 'Italian',
    price: 100,
    description: 'Honouring the traditional art of pizza making aligned with modern insights, complemented with authentic pasta and antipasto',
    rating: 4.4,
    mood_rating: 50,
    mood_name: "Romantic",
    date_rating: 2,
    social_rating: 2,
    rush_rating: 5,
    picture: "https://source.unsplash.com/9p6pFEwq-wI"
  },
  {
    name: "Phorry Galors",
    location: '136 Hopkins St, Footscray',
    cuisine: 'Vietnamese',
    price: 120,
    description: 'Delicious Pho Joint',
    rating: 4.4,
    mood_rating: 40,
    mood_name: "Romantic",
    date_rating: 4,
    social_rating: 4,
    rush_rating: 4,
    picture: "https://source.unsplash.com/v4LQkXJPK0o"
  },
  {
    name: 'Maccaroni Trattoria Italiana',
    location: '10-16 Manchester Ln, Melbourne',
    cuisine: "Italian",
    price: 80,
    description: 'Italian fare in the heart of the CBD',
    rating: 4.3,
    mood_rating: 20,
    mood_name: "Romantic",
    date_rating: 5,
    social_rating: 5,
    rush_rating: 1,
    picture: "https://source.unsplash.com/q03ZLncun2Y"
  },
  {
    name: 'Osteria Ilaria',
    location: '367 Little Bourke St, Melbourne',
    cuisine: 'Italian',
    price: 100,
    description: 'An intimate wine bar & eatery from the team behind Tip 00, remixing their elder siblings signature Italian roots with a fun Mediterranean flair',
    rating: 4.3,
    mood_rating: 10,
    mood_name: "Romantic",
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2,
    picture: "https://source.unsplash.com/2Y4bYo1Mn-0"
  },
  {
    name: 'Trippy Taco',
    location: '234 Gertrude St, Fitzroy',
    cuisine: 'Mexican',
    price: 50,
    description: 'Mexican style vegetarian street food',
    rating: 4.3,
    mood_rating: 10,
    date_rating: 3,
    social_rating: 5,
    rush_rating: 0,
    picture: "https://source.unsplash.com/JANnAEcRLio"
  },
  {
    name: 'La Tortilleria',
    location: '72 Stubbs St, Kensington',
    cuisine: 'Mexican',
    price: 100,
    description: 'Serving up Mexican cuisine in a warm and friendly atmosphere, with authentic house made tortillas',
    rating: 4.3,
    mood_rating: 20,
    # mood_name: "Casual",
    date_rating: 5,
    social_rating: 3,
    rush_rating: 2,
    picture: "https://source.unsplash.com/W3SEyZODn8U"
  },
  {
    name: 'Mamasita',
    location: 'Level 1/11 Collins St, Melbourne',
    cuisine: 'Mexican',
    price: 120,
    description: 'Melbournes first proper taqueria serving up a wide selection of tacos and tequila in a trendy space',
    rating: 4.3,
    mood_rating: 15,
    mood_name: "Casual",
    date_rating: 4,
    social_rating: 4,
    rush_rating: 5,
    picture: "https://source.unsplash.com/OkhcMbf3vQ0"
  },
  {
    name: 'Radio Mexico',
    location: '11-13 Carlisle St, St Kilda',
    cuisine: 'Mexican',
    price: 80,
    description: 'Iconic St Kilda restaurant offering authentic Mexican flavours with a Melbourne twist, vibrant atmosphere and margaritas',
    rating: 4.3,
    mood_rating: 12,
    mood_name: "Casual",
    date_rating: 4,
    social_rating: 5,
    rush_rating: 2,
    picture: "https://source.unsplash.com/RKw6ffnbYEs"
  },
  {
    name: 'Fonda',
    location: '236 Smith St, Collingwood',
    cuisine: 'Mexican',
    price: 100,
    description: 'Mexican cuisine with a cool modern twist',
    rating: 4.3,
    mood_rating: 20,
    # mood_name: "Romantic",
    date_rating: 5,
    social_rating: 3,
    rush_rating: 1,
    picture: "https://source.unsplash.com/OkhcMbf3vQ0"
  }
])

Review.create([
    {
    restaurant_id: 2,
    title: "Absolutely delicious",
    rating: 5,
    source: "Google",
    reviewdate: "10/08/2021",
    description: "If you look around Footscray, only this restauranthas a variety of Vietnamese foods. We have been here many times and every time we order different dishes. This restaurant has 1: fast service 2: the restaurant is clean 3: lovely and good service staff 4: reasonable food prices for Footscray 5: a lot of special dishes which other restaurants don't have (eg. bun cha hanoi, bun moc thit"
    },

    {
    restaurant_id: 2,
    title: "Intimate",
    rating: 4,
    source: "Zomato",
    reviewdate: "05/08/2021",
    description: "Sapa Hills is my go to Vietnamese restaurant in Footscray. The food is amazing and it's very reasonably priced. Love coming here on date night."
    },

    {
    restaurant_id: 2,
    title: "Date night Luxury",
    rating: 5,
    source: "Yelp",
    reviewdate: "01/08/2021",
    description: "Came here for date night. Got crab banh canh (crab rice drop noodles) and the other half had pho bo. Place is super clean and love the decor. The restaurant also has that lovely char grill smell that took me back to one of my fave restaurants in Sydney (hai au in canley vale for those wondering). The banh canh was good. The basic broth was good and got better once I added the usual condiments. The pho bo is also good, but to be honest have had better. I think is place is a good all rounder vietnamese restaurant. The cafe sua da is reeeallly good that was the stand out item!I'll come back again and try out the spring rolls though!"
    },

    {
    restaurant_id: 2,
    title: "Yummy Noods",
    rating: 3,
    source: "Google",
    reviewdate: "26/07/2021",
    description: "I love to try new things, do not get me wrong but when somewhere is as consistent and delicious as Sapa Hills I find myself walking past loads of Vietnamese restaurants in Footscray and heading back to this awesome favourite.  Sapa Hills was the first semi trendy Vietnamese to hit Footscray and their food, fast service and friendliness won me over.  The secret is out re this place and I would definitely book ahead especially if dining for more than two people.  My protips here are to order the Sapa Hill spring rolls and to try the duck stuffed with prawn meat.  It is to die for!!!  I have to say Sapa Hills is my go to for Vietnamese in the west :)"
    },

    {
      restaurant_id: 2,
      title: "Breath of Fresh Air",
      rating: 4,
      source: "Google",
      reviewdate: "22/07/2021",
      description: "Like always yet again amazing fresh tasty vietnamese deliciousness.. Will continue to come here weekly!Excellent in every way possible..only negative is, you eventually have to leave...but even that is a positive..as you can look forward to coming back."
    },

    {
      restaurant_id: 2,
      title: "Friendly Staff, Great Atmosphere",
      rating: 5,
      source: "Google",
      reviewdate: "21/07/2021",
      description: "Yummy food and great quality.  Service is good and clean restaurant.  Very new and clean toilets, which says a lot about hygiene.  Food prices are a little steep for Footscray with most dishes around the $17-$22 mark and rice or noodle dishes around $13-$17.  However the quality of the food was absolutely delicious.  Would highly recommend and definitely going back again!  We were there on a Saturday around 3pm and the place was still packed!  Very friendly and attentive staff!"
    }

])
