puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Buddhas Banquet Thai cuisine',
    address:      '104 Swan St, Richmond VIC 3121',
    category:      'french',
    phone_number:  '03 9427 7771'

  },
  {
    name:         'Ms Frankie',
    address:      '24 Cremorne St, Cremorne VIC 3121',
    category:      'italian',
    phone_number:  '03 9428 5117'
  },
  {
    name:         'Neighbourhood Wine',
    address:      '1 Reid St, Fitzroy North VIC 3068',
    category:      'italian',
    phone_number:  '03 9486 8306'
  },
  {
    name:         'Feast of Merit',
    address:      '117 Swan St, Richmond VIC 3121',
    category:      'japanese',
    phone_number:  '03 9428 8480'
  },
  {
    name:         'The Beer & Burger Bar',
    address:      '112 Swan St, Richmond VIC 3121',
    category:      'chinese',
    phone_number:  '03 9429 5934'
  }
]
Restaurant.create!(restaurants_attributes)

puts "Creating reviews..."

reviews_attributes = [
 {
   content: "very good restaurant",
   rating: 5,
   restaurant_id: Restaurant.all.sample.id
},
{
   content: "not so good place to eat",
   rating: 3,
   restaurant_id: Restaurant.all.sample.id
},
{
   content: "lovely for families",
   rating: 2,
   restaurant_id: Restaurant.all.sample.id
},
{
   content: "welcoming staff",
   rating: 4,
   restaurant_id: Restaurant.all.sample.id
},
{
   content: "easy to get to",
   rating: 1,
   restaurant_id: Restaurant.all.sample.id
}]

Review.create!(reviews_attributes)

puts 'Finished!'