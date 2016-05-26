# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: "Daenerys", last_name: "Targaryen", email: "daenerys@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/608013046192185344/Vp1n5A14.jpg")
User.create(first_name: "Tyrion", last_name: "Lannister", email: "tyrion@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/668279339838935040/8sUE9d4C.jpg")
User.create(first_name: "Bran", last_name: "Stark", email: "bran@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/681656782897426432/ObS_snKu_400x400.jpg")
User.create(first_name: "Jon", last_name: "Snow", email: "jon@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/1325458326/JonSnow_400x400.jpg")
User.create(first_name: "Sansa", last_name: "Stark", email: "sansa@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/1812114126/newtwitter_400x400.jpg")
User.create(first_name: "Samwell", last_name: "Tarley", email: "sam@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/1792907622/samwell_400x400.png")
User.create(first_name: "Arya", last_name: "Stark", email: "arya@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/713341866620485633/r74dChcE_400x400.jpg")
User.create(first_name: "Cersei", last_name: "Lannister", email: "cersei@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/730658482966413313/2Uy0RNCB_400x400.jpg")

User.create(first_name: "Jorah", last_name: "Mormont", email: "jorah@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/608026278885748736/HedCKgIP_400x400.jpg")
User.create(first_name: "Davos", last_name: "Seaworth", email: "davos@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/552990589847748609/Gsr52kfE.jpeg")
User.create(first_name: "Brienne", last_name: "of Tarth", email: "brienne@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/679754441105489921/QuY3CKTr_400x400.jpg")
User.create(first_name: "Tormund", last_name: "Giantsbane", email: "tormund@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/480467156472049665/hwnxpGo3.jpeg")
User.create(first_name: "Jamie", last_name: "Lannister", email: "jamie@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/719581912851943425/fHJ2C8Qs_400x400.jpg")
User.create(first_name: "Petyr", last_name: "Baelish", email: "petyr@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/602838998873034752/-cmBy25c_400x400.png")
User.create(first_name: "Grey", last_name: "Worm", email: "grey@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/470661678917775360/S4A9OP0G_400x400.jpeg")
User.create(first_name: "White", last_name: "Walker", email: "white@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/735133346381062145/tyDO1BTc_400x400.jpg")

User.create(first_name: "Jaqen", last_name: "H'ghar", email: "jaqen@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/542398181632258048/mq2GIZY5.png")
User.create(first_name: "Theon", last_name: "Greyjoy", email: "theon@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/2792927926/e03c9ddcaa878e540a5aa69102e699d7_400x400.jpeg")
User.create(first_name: "Margaery", last_name: "Tyrell", email: "margaery@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/713228404980523008/LjZqdtoP_400x400.jpg")
User.create(first_name: "Varys", last_name: "the Spider", email: "varys@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/1377379485/varys_400x400.jpg")

Location.create(name: "Dragon Palace", address: "202 Centre St, Little Italy, New York, NY 10013", picture: "https://s3-media4.fl.yelpcdn.com/bphoto/BhOnXzg9ts1nWuPvsR-RAQ/ms.jpg")
Location.create(name: "Carvel Ice Cream", address: "9 Broadway, Financial District, New York, NY 10004", picture: "https://s3-media2.fl.yelpcdn.com/bphoto/QRuSllicYkNkyosPopBykA/ms.jpg")
Location.create(name: "The Headless Horseman", address: "119 E 15th St, Flatiron, New York, NY 10003", picture: "https://s3-media4.fl.yelpcdn.com/bphoto/QFQEhYUpRlYkQWCEpp9IWA/ms.jpg")
Location.create(name: "The NoMad Bar", address: "The NoMad Hotel, 10 W 28th St, Flatiron, New York, NY 10001", picture: "https://s3-media1.fl.yelpcdn.com/bphoto/kld5tQh9Dl7sWZcIf-FWNA/ms.jpg")
Location.create(name: "Hooters", address: "155 W 33rd St, Midtown West, New York, NY 10001", picture: "https://s3-media3.fl.yelpcdn.com/bphoto/PHbXxQ7ZI5MT8_5NzR7fag/ms.jpg")
Location.create(name: "Ippudo NY", address: "65 4th Ave, East Village, New York, NY 10003", picture: "https://s3-media2.fl.yelpcdn.com/bphoto/KBgiszUWNuK8DU77sxqfew/ms.jpg")
Location.create(name: "Faro", address: "436 Jefferson St, Bushwick, Brooklyn, NY 11237", picture: "https://s3-media1.fl.yelpcdn.com/bphoto/m5et5577c8QOj4Cnw120hQ/ms.jpg")
Location.create(name: "Hometown Hotpot & BBQ", address: "194 Grand St, Little Italy, New York, NY 10013", picture: "https://s3-media2.fl.yelpcdn.com/bphoto/CfHa3IYif4zHbhYoaKnJZQ/ms.jpg")

Event.create(name: "Cookout w/ Dragons", host_id: 1, location_id: 1, start_time: Time.parse("#{DateTime.current + 1}"), meeting_place: "My palace", duration: "🐼")
Event.create(name: "Frozen Treats", host_id: 3, location_id: 2, start_time: Time.parse("#{DateTime.current + 2}"), meeting_place: "The Wall", duration: "🐰")
Event.create(name: "Bros Lunch", host_id: 4, location_id: 3, start_time: Time.parse("#{DateTime.current + 0.9}"), meeting_place: "Castle Black", duration: "🐢")
Event.create(name: "Burgers!!", host_id: 7, location_id: 4, start_time: Time.parse("#{DateTime.current + 0.8}"), meeting_place: "A weird temple", duration: "🐼")
Event.create(name: "Feasting", host_id: 2, location_id: 5, start_time: Time.parse("#{DateTime.current + 1}"), meeting_place: "Dany's pyramid", duration: "🐼")
Event.create(name: "Ramen", host_id: 5, location_id: 6, start_time: Time.parse("#{DateTime.current + 1}"), meeting_place: "Winterfell", duration: "🐢")
Event.create(name: "Not Hotdogs", host_id: 18, location_id: 7, start_time: Time.parse("#{DateTime.current + 1}"), meeting_place: "Iron Islands", duration: "🐰")
Event.create(name: "Texas BBQ", host_id: 11, location_id: 8, start_time: Time.parse("#{DateTime.current + 1}"), meeting_place: "The woods?", duration: "🐼")


