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
  opt_in_for_emails: true,
  password: "password123"
)

user2 = RegisteredUser.create!(
  name: "Jessica",
  email: "jessica@emailaddress.com",
  suburb: "Northcote",
  postcode: 3070,
  state: "Victoria",
  phone_number: 0400000000,
  opt_in_for_emails: false,
  password: "password123"
)

user3 = RegisteredUser.create!(
  name: "Tim",
  email: "tim@emailaddress.com",
  suburb: "Frankston",
  postcode: 3199,
  state: "Victoria",
  phone_number: 0400000000,
  opt_in_for_emails: false,
  password: "password123"
)

user3 = RegisteredUser.create!(
  name: "Charlie",
  email: "charlie@emailaddress.com",
  suburb: "Port Melbourne",
  postcode: 3207,
  state: "Victoria",
  phone_number: 0400000000,
  opt_in_for_emails: false,
  password: "password123"
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
  opening_hours: "",
  bio: "The Source Bulk Foods was born in 2012 from our belief that unpackaged food should be easier to access and a smaller carbon footprint could be achieved every time you shop.",
  password: "password123",
  email_address: "brunswick@thesourcebulkfoods.com.au",
  instagram: "https://www.instagram.com/thesourcebrunswick/",
  facebook: "https://www.facebook.com/thesourcebulkfoodsbrunswick",
  online_store: true,
  admin: false
)

p vendor1


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
  bio: "Zero Waste Store is an online supermarket for all your plastic free, planet friendly, toxin free items. We package up your shopping cart using 100% plastic free materials for delivery to your door.",
  password: "password123",
  email_address: "hello@something.com",
  instagram: "",
  facebook: "",
  online_store: false,
  admin: false
)


admin = RegisteredVendor.create!(
  vendor_name: "Admin Login",
  phone_number: 04000000,
  address: "",
  suburb: "",
  postcode: 3163,
  state: "",
  website: "",
  logo: "",
  background_image: "",
  hero_image: "",
  opening_hours:
  "",
  bio: "Admin User account",
  password: "password123",
  email_address: "admin@admin.com",
  instagram: "",
  facebook: "",
  online_store: "",
  admin: true
)

puts "Added #{RegisteredVendor.count} vendors"

#========================================================================

ConsumerValue.destroy_all

puts "ConsumerValues table cleared..."

puts "adding consumer values ... "

value1 = ConsumerValue.create!(
  name: "Plastic-free",
  image: "/assets/icons/value_plastic-free.png"
)

value2 = ConsumerValue.create!(
  name: "Support local",
  image: "/assets/icons/value_support_local.png"
)

value3 = ConsumerValue.create!(
  name: "Reuse / upcycle",
  image: "/assets/icons/value_recycle_reuse.png"
)

value4 = ConsumerValue.create!(
  name: "Sharing / loaning",
  image: "/assets/icons/value_share_loan.png"
)

value5 = ConsumerValue.create!(
  name: "Make your own (DIY)",
  image: "/assets/icons/value_diy_make_your_own.png"
)

value6 = ConsumerValue.create!(
  name: "Environmental resources",
  image: "/assets/icons/value_environmental_resources.png"
)

value7 = ConsumerValue.create!(
  name: "Grow your own",
  image: "/assets/icons/value_grow_your_own.png"
)

value8 = ConsumerValue.create!(
  name: "Community",
  image: "/assets/icons/value_community.png"
)

puts "Added #{ConsumerValue.count} categories"

#========================================================================

ConsumerCategory.destroy_all

puts "ConsumerCategories table cleared..."

puts "adding consumer categories ... "

cat1 = ConsumerCategory.create!(
  name: "Energy",
  image: "/assets/icons/cat_energy.png"
)

cat2 = ConsumerCategory.create!(
  name: "Grocery",
  image: "/assets/icons/cat_grocery.png"
)
cat3 = ConsumerCategory.create!(
  name: "Meat / Poultry",
  image: "/assets/icons/cat_meat_poultry.png"
)

cat4 = ConsumerCategory.create!(
  name: "Dairy",
  image: "/assets/icons/cat_dairy.png"
)

cat5 = ConsumerCategory.create!(
  name: "Garden / Outdoors",
  image: "/assets/icons/cat_garden_outdoors.png"
)

cat6 = ConsumerCategory.create!(
  name: "Household",
  image: "/assets/icons/cat_household.png"
)

cat7 = ConsumerCategory.create!(
  name: "Bathroom",
  image: "/assets/icons/cat_bathroom.png"
)

cat8 = ConsumerCategory.create!(
  name: "Laundry",
  image: "/assets/icons/cat_laundry.png"
)

cat9 = ConsumerCategory.create!(
  name: "Homewares",
  image: "/assets/icons/cat_homewares.png"
)

cat10 = ConsumerCategory.create!(
  name: "Clothing / Fashion",
  image: "/assets/icons/cat_clothing_fashion.png"
)

puts "Added #{ConsumerCategory.count} categories"


#==============================================================
#Create ConsumerCategory >--<

vendor1.consumer_categories << cat2 << cat6 << cat7 << cat8

puts "Vendor '#{vendor1.vendor_name}' is in the following categories: '#{vendor1.consumer_categories.pluck(:name).join("', '")}'"
puts "Category '#{cat2.name}' is assigned to the following vendors: '#{cat2.registered_vendors.pluck(:vendor_name).join("', '")}'"


user1.consumer_categories << cat6 << cat7 << cat10
user2.consumer_categories << cat1 << cat7 << cat3 << cat2
user3.consumer_categories << cat3 << cat2 << cat1


puts "User '#{user1.name}' is interested in the following categories: '#{user1.consumer_categories.pluck(:name).join("', '")}'"
puts "Categories '#{cat3.name}' is assigned to the following users: '#{cat3.registered_users.pluck(:name).join("', '")}'"


#==============================================================
#Create ConsumerValue >--<

vendor2.consumer_values << value1 << value3

puts "Vendor '#{vendor2.vendor_name}' supports the following values: '#{vendor2.consumer_values.pluck(:name).join("', '")}'"
puts "Value '#{value3.name}' is assigned to the following vendors: '#{value3.registered_vendors.pluck(:vendor_name).join("', '")}'"


user1.consumer_values << value6 << value7 << value8
user2.consumer_values << value1 << value7 << value3 << value2
user3.consumer_values << value3 << value2 << value1

puts "User '#{user1.name}' supports the following values: '#{user1.consumer_values.pluck(:name).join("', '")}'"
puts "Value '#{value3.name}' is assigned to the following users: '#{value3.registered_users.pluck(:name).join("', '")}'"
