# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).


RegisteredUser.destroy_all

puts "table cleared..."

puts "adding vendors"

user1 = RegisteredUser.create!(
  name: "Rachel",
  email: "rachel@emailaddress.com",
  suburb: "Murrumbeena",
  postcode: 3163,
  state: "Victoria",
  phone_number: 0400000000,
  opt_in_for_emails: true
)

user2 = RegisteredUser.create!(
  name: "Jessica",
  email: "jessica@emailaddress.com",
  suburb: "Northcote",
  postcode: 3070,
  state: "Victoria",
  phone_number: 0400000000,
  opt_in_for_emails: false
)

user3 = RegisteredUser.create!(
  name: "Tim",
  email: "tim@emailaddress.com",
  suburb: "Frankston",
  postcode: 3199,
  state: "Victoria",
  phone_number: 0400000000,
  opt_in_for_emails: false
)

user3 = RegisteredUser.create!(
  name: "Charlie",
  email: "charlie@emailaddress.com",
  suburb: "Port Melbourne",
  postcode: 3207,
  state: "Victoria",
  phone_number: 0400000000,
  opt_in_for_emails: false
)

puts "Added #{RegisteredUser.count} users"

#=============================================

RegisteredVendor.destroy_all

puts "table cleared..."

puts "adding vendors"

vendor1 = RegisteredVendor.create!(
  vendor_name: "The Source Bulk Foods",
  phone_number: 393881005,
  address: "112 Sydney Road",
  suburb: "Brunswick",
  postcode: 3056,
  state: "Victoria",
  website: "https://thesourcebulkfoods.com.au/",
  logo: "/assets/seed_logo_source_bulk.png",
  background_image: "https://thesourcebulkfoods.com.au/wp-content/uploads/2018/05/stores-bg-e1533709708832.jpg",
  hero_image: "https://thesourcebulkfoods.com.au/wp-content/uploads/2020/05/TSBF_Loyalty-Program-Carousel_950x420px.jpg",
  opening_hours:
  "Mon - Fri: 9:30am – 6:00pm
  Sat: 9:00am – 5:00pm
  Sun: 10:00am – 5:00pm
  Public holiday trading hours may vary, please contact the store directly to conﬁrm.",
  bio: "The Source Bulk Foods was born in 2012 from our belief that unpackaged food should be easier to access and a smaller carbon footprint could be achieved every time you shop."
)


vendor2 = RegisteredVendor.create!(
  vendor_name: "Zero Waste Food Store",
  phone_number: 893371218,
  address: "Spake Coffee Co, Shop 4, 39 Adelaide St",
  suburb: "Fremantle",
  postcode: 3056,
  state: "Western Australia",
  website: "https://zerowastestore.com.au/",
  logo: "https://cdn.shopify.com/s/files/1/0052/0814/6038/files/TurtleLogo_20_6_18_e55a536a-ab40-4fad-a732-36fbe8258930_180x.jpg?v=1530960896",
  background_image: "https://cdn.shopify.com/s/files/1/0052/0814/6038/files/Zero_Waste_Store_Australia_Cover_Photo_900x.jpg?v=1551355143",
  hero_image: "/assets/seed_hero_image_zero waste food store.jpg",
  opening_hours:
  "Online store only",
  bio: "Zero Waste Store is an online supermarket for all your plastic free, planet friendly, toxin free items. We package up your shopping cart using 100% plastic free materials for delivery to your door."
)

puts "Added #{RegisteredVendor.count} vendors"

#========================================================================

ConsumerValue.destroy_all

puts "ConsumerValues table cleared..."

puts "adding consumer values ... "

value1 = ConsumerValue.create!(
  name: "Plastic-free",
  image: "/assets/icons/plastic-free.png"
)

value2 = ConsumerValue.create!(
  name: "Support local",
  image: ""
)

value3 = ConsumerValue.create!(
  name: "Reuse / upcycle",
  image: ""
)

value4 = ConsumerValue.create!(
  name: "Sharing / loaning",
  image: ""
)

value5 = ConsumerValue.create!(
  name: "Make your own (DIY)",
  image: ""
)

value6 = ConsumerValue.create!(
  name: "Environmental resources",
  image: ""
)

value7 = ConsumerValue.create!(
  name: "Grow your own",
  image: ""
)

value8 = ConsumerValue.create!(
  name: "Community",
  image: ""
)

puts "Added #{ConsumerValue.count} categories"

#========================================================================

ConsumerCategory.destroy_all

puts "ConsumerCategories table cleared..."

puts "adding consumer categories ... "

cat1 = ConsumerCategory.create!(
  name: "Energy",
  image: ""
)

cat2 = ConsumerCategory.create!(
  name: "Grocery",
  image: ""
)
cat3 = ConsumerCategory.create!(
  name: "Meat / Poultry",
  image: ""
)

cat4 = ConsumerCategory.create!(
  name: "Dairy",
  image: ""
)

cat5 = ConsumerCategory.create!(
  name: "Garden / Outdoors",
  image: ""
)

cat6 = ConsumerCategory.create!(
  name: "Household",
  image: ""
)

cat7 = ConsumerCategory.create!(
  name: "Bathroom",
  image: ""
)

cat8 = ConsumerCategory.create!(
  name: "Laundry",
  image: ""
)

cat9 = ConsumerCategory.create!(
  name: "Homewares",
  image: ""
)

puts "Added #{ConsumerCategory.count} categories"
