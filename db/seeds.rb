# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@dt = User.create(first_name: "Daenerys", last_name: "Targaryen", email: "daenerys@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/608013046192185344/Vp1n5A14.jpg")
@tl = User.create(first_name: "Tyrion", last_name: "Lannister", email: "tyrion@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/668279339838935040/8sUE9d4C.jpg")
@bs = User.create(first_name: "Bran", last_name: "Stark", email: "bran@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/681656782897426432/ObS_snKu_400x400.jpg")
@js = User.create(first_name: "Jon", last_name: "Snow", email: "jon@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/1325458326/JonSnow_400x400.jpg")
@ss = User.create(first_name: "Sansa", last_name: "Stark", email: "sansa@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/1812114126/newtwitter_400x400.jpg")
@st = User.create(first_name: "Samwell", last_name: "Tarley", email: "sam@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/1792907622/samwell_400x400.png")
@as = User.create(first_name: "Arya", last_name: "Stark", email: "arya@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/713341866620485633/r74dChcE_400x400.jpg")
@cl = User.create(first_name: "Cersei", last_name: "Lannister", email: "cersei@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/730658482966413313/2Uy0RNCB_400x400.jpg")
@jm = User.create(first_name: "Jorah", last_name: "Mormont", email: "jorah@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/608026278885748736/HedCKgIP_400x400.jpg")
@ds = User.create(first_name: "Davos", last_name: "Seaworth", email: "davos@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/552990589847748609/Gsr52kfE.jpeg")
@bt = User.create(first_name: "Brienne", last_name: "of Tarth", email: "brienne@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/679754441105489921/QuY3CKTr_400x400.jpg")
@tg = User.create(first_name: "Tormund", last_name: "Giantsbane", email: "tormund@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/480467156472049665/hwnxpGo3.jpeg")
@jl = User.create(first_name: "Jamie", last_name: "Lannister", email: "jamie@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/719581912851943425/fHJ2C8Qs_400x400.jpg")
@pb = User.create(first_name: "Petyr", last_name: "Baelish", email: "petyr@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/602838998873034752/-cmBy25c_400x400.png")
@gw = User.create(first_name: "Grey", last_name: "Worm", email: "grey@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/470661678917775360/S4A9OP0G_400x400.jpeg")
@ww = User.create(first_name: "White", last_name: "Walker", email: "white@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/735133346381062145/tyDO1BTc_400x400.jpg")
@jh = User.create(first_name: "Jaqen", last_name: "H'ghar", email: "jaqen@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/542398181632258048/mq2GIZY5.png")
@thg = User.create(first_name: "Theon", last_name: "Greyjoy", email: "theon@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/2792927926/e03c9ddcaa878e540a5aa69102e699d7_400x400.jpeg")
@mt = User.create(first_name: "Margaery", last_name: "Tyrell", email: "margaery@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/713228404980523008/LjZqdtoP_400x400.jpg")
@vs = User.create(first_name: "Varys", last_name: "the Spider", email: "varys@got.com", password: "password", picture: "https://pbs.twimg.com/profile_images/1377379485/varys_400x400.jpg")

Location.create(name: "Dragon Palace", address: "202 Centre St, Little Italy, New York, NY 10013", picture: "https://s3-media4.fl.yelpcdn.com/bphoto/BhOnXzg9ts1nWuPvsR-RAQ/ms.jpg")
Location.create(name: "Carvel Ice Cream", address: "9 Broadway, Financial District, New York, NY 10004", picture: "https://s3-media2.fl.yelpcdn.com/bphoto/QRuSllicYkNkyosPopBykA/ms.jpg")
Location.create(name: "The Headless Horseman", address: "119 E 15th St, Flatiron, New York, NY 10003", picture: "https://s3-media4.fl.yelpcdn.com/bphoto/QFQEhYUpRlYkQWCEpp9IWA/ms.jpg")
Location.create(name: "The NoMad Bar", address: "The NoMad Hotel, 10 W 28th St, Flatiron, New York, NY 10001", picture: "https://s3-media1.fl.yelpcdn.com/bphoto/kld5tQh9Dl7sWZcIf-FWNA/ms.jpg")
Location.create(name: "Hooters", address: "155 W 33rd St, Midtown West, New York, NY 10001", picture: "https://s3-media3.fl.yelpcdn.com/bphoto/PHbXxQ7ZI5MT8_5NzR7fag/ms.jpg")
Location.create(name: "Ippudo NY", address: "65 4th Ave, East Village, New York, NY 10003", picture: "https://s3-media2.fl.yelpcdn.com/bphoto/KBgiszUWNuK8DU77sxqfew/ms.jpg")
Location.create(name: "Faro", address: "436 Jefferson St, Bushwick, Brooklyn, NY 11237", picture: "https://s3-media1.fl.yelpcdn.com/bphoto/m5et5577c8QOj4Cnw120hQ/ms.jpg")
Location.create(name: "Hometown BBQ", address: "194 Grand St, Little Italy, New York, NY 10013", picture: "https://s3-media2.fl.yelpcdn.com/bphoto/CfHa3IYif4zHbhYoaKnJZQ/ms.jpg")

@cookout = Event.create(name: "Cookout w/ Dragons", host_id: 1, location_id: 1, start_time: Time.parse("#{DateTime.current + 1}"), meeting_place: "My palace", duration: "🐼")
@treats = Event.create(name: "Frozen Treats", host_id: 3, location_id: 2, start_time: Time.parse("#{DateTime.current + 7}"), meeting_place: "The Wall", duration: "🐰")
@bros = Event.create(name: "Bros Lunch", host_id: 4, location_id: 3, start_time: Time.parse("#{DateTime.current + 5}"), meeting_place: "Castle Black", duration: "🐢")
@burgers = Event.create(name: "Burgers!!", host_id: 7, location_id: 4, start_time: Time.parse("#{DateTime.current + 2.3}"), meeting_place: "A weird temple", duration: "🐼")
@feast = Event.create(name: "Feasting", host_id: 2, location_id: 5, start_time: Time.parse("#{DateTime.current + 1.1}"), meeting_place: "Dany's pyramid", duration: "🐼")
@ramen = Event.create(name: "Ramen", host_id: 5, location_id: 6, start_time: Time.parse("#{DateTime.current + 1.3}"), meeting_place: "Winterfell", duration: "🐢")
@hotdogs = Event.create(name: "Not Hotdogs", host_id: 18, location_id: 7, start_time: Time.parse("#{DateTime.current + 3}"), meeting_place: "Iron Islands", duration: "🐰")
@bbq = Event.create(name: "Texas BBQ", host_id: 11, location_id: 8, start_time: Time.parse("#{DateTime.current + 0.35}"), meeting_place: "The woods?", duration: "🐼")

@cookout.registrations.create(guest_id: @tl.id)
@cookout.registrations.create(guest_id: @jm.id)
@cookout.registrations.create(guest_id: @gw.id)
@cookout.registrations.create(guest_id: @vs.id)
@treats.registrations.create(guest_id: @ww.id)
@treats.registrations.create(guest_id: @tg.id)
@treats.registrations.create(guest_id: @js.id)
@treats.registrations.create(guest_id: @ss.id)
@treats.registrations.create(guest_id: @thg.id)
@bros.registrations.create(guest_id: @tl.id)
@bros.registrations.create(guest_id: @bs.id)
@bros.registrations.create(guest_id: @st.id)
@bros.registrations.create(guest_id: @jm.id)
@bros.registrations.create(guest_id: @ds.id)
@bros.registrations.create(guest_id: @tg.id)
@bros.registrations.create(guest_id: @jh.id)
@bros.registrations.create(guest_id: @thg.id)
@bros.registrations.create(guest_id: @ww.id)
@burgers.registrations.create(guest_id: @dt.id)
@burgers.registrations.create(guest_id: @ss.id)
@burgers.registrations.create(guest_id: @bt.id)
@burgers.registrations.create(guest_id: @gw.id)
@burgers.registrations.create(guest_id: @jh.id)
@feast.registrations.create(guest_id: @pb.id)
@feast.registrations.create(guest_id: @cl.id)
@feast.registrations.create(guest_id: @jl.id)
@feast.registrations.create(guest_id: @mt.id)
@ramen.registrations.create(guest_id: @bt.id)
@ramen.registrations.create(guest_id: @bs.id)
@ramen.registrations.create(guest_id: @as.id)
@ramen.registrations.create(guest_id: @js.id)
@ramen.registrations.create(guest_id: @pb.id)
@hotdogs.registrations.create(guest_id: @vs.id)
@hotdogs.registrations.create(guest_id: @gw.id)
@bbq.registrations.create(guest_id: @dt.id)
@bbq.registrations.create(guest_id: @ss.id)
@bbq.registrations.create(guest_id: @cl.id)
@bbq.registrations.create(guest_id: @as.id)
@bbq.registrations.create(guest_id: @mt.id)

Friendship.create(user_id: @dt.id, friend_id: @tl.id)
Friendship.create(user_id: @dt.id, friend_id: @jm.id)
Friendship.create(user_id: @dt.id, friend_id: @gw.id)
Friendship.create(user_id: @dt.id, friend_id: @vs.id)

Friendship.create(user_id: @tl.id, friend_id: @js.id)
Friendship.create(user_id: @tl.id, friend_id: @jl.id)
Friendship.create(user_id: @tl.id, friend_id: @cl.id)
Friendship.create(user_id: @tl.id, friend_id: @vs.id)
Friendship.create(user_id: @tl.id, friend_id: @pb.id)
Friendship.create(user_id: @tl.id, friend_id: @gw.id)
Friendship.create(user_id: @tl.id, friend_id: @jm.id)

Friendship.create(user_id: @bs.id, friend_id: @js.id)
Friendship.create(user_id: @bs.id, friend_id: @ss.id)
Friendship.create(user_id: @bs.id, friend_id: @as.id)
Friendship.create(user_id: @bs.id, friend_id: @st.id)
Friendship.create(user_id: @bs.id, friend_id: @ww.id)

Friendship.create(user_id: @js.id, friend_id: @as.id)
Friendship.create(user_id: @js.id, friend_id: @ss.id)
Friendship.create(user_id: @js.id, friend_id: @st.id)
Friendship.create(user_id: @js.id, friend_id: @ds.id)
Friendship.create(user_id: @js.id, friend_id: @bt.id)
Friendship.create(user_id: @js.id, friend_id: @tg.id)

Friendship.create(user_id: @ss.id, friend_id: @as.id)
Friendship.create(user_id: @ss.id, friend_id: @bt.id)
Friendship.create(user_id: @ss.id, friend_id: @pb.id)

Friendship.create(user_id: @st.id, friend_id: @ds.id)
Friendship.create(user_id: @st.id, friend_id: @bt.id)

Friendship.create(user_id: @as.id, friend_id: @jh.id)
Friendship.create(user_id: @as.id, friend_id: @bt.id)

Friendship.create(user_id: @cl.id, friend_id: @jl.id)
Friendship.create(user_id: @cl.id, friend_id: @mt.id)
Friendship.create(user_id: @cl.id, friend_id: @pb.id)
Friendship.create(user_id: @cl.id, friend_id: @vs.id)

Friendship.create(user_id: @jm.id, friend_id: @gw.id)

Friendship.create(user_id: @ds.id, friend_id: @tg.id)
Friendship.create(user_id: @ds.id, friend_id: @bt.id)

Friendship.create(user_id: @bt.id, friend_id: @jl.id)
Friendship.create(user_id: @bt.id, friend_id: @tg.id)

Friendship.create(user_id: @jl.id, friend_id: @pb.id)
Friendship.create(user_id: @jl.id, friend_id: @vs.id)
Friendship.create(user_id: @jl.id, friend_id: @pb.id)

Friendship.create(user_id: @pb.id, friend_id: @vs.id)

Friendship.create(user_id: @gw.id, friend_id: @vs.id)

Tip.create(user_id: @dt.id, location_id: 1, content: "Kung Pao Shrimp FTW")
Tip.create(user_id: @tl.id, location_id: 2, content: "Surprisingly good wine list")

Tip.create(user_id: @ww.id, location_id: 2, content: "Loved the Oreo Milkshake")

Tip.create(user_id: @js.id, location_id: 3, content: "Roasted Duck was good, so was the beer")

Tip.create(user_id: @as.id, location_id: 4, content: "Best burger I've ever had")
Tip.create(user_id: @jh.id, location_id: 4, content: "A man says order the burger")

Tip.create(user_id: @ss.id, location_id: 6, content: "My favorite ramen shop in NYC")

Tip.create(user_id: @cl.id, location_id: 7, content: "Order any of the pastas, avoid rest of entrees")

Tip.create(user_id: @bt.id, location_id: 8, content: "The brisket and cornbread are amazing!")

Comment.create(user_id: @dt.id, event_id: @cookout.id, content: "Can someone invite Daario?")
Comment.create(user_id: @jm.id, event_id: @cookout.id, content: "That guy is the worst Khaleesi")
Comment.create(user_id: @jm.id, event_id: @cookout.id, content: "Also, I love you")

Comment.create(user_id: @ww.id, event_id: @treats.id, content: "Can't wait to see you Bran")
Comment.create(user_id: @bs.id, event_id: @treats.id, content: "WAT")

Comment.create(user_id: @as.id, event_id: @burgers.id, content: "What's the name of the drink I like here?")
Comment.create(user_id: @jh.id, event_id: @burgers.id, content: "A drink has no name")

Comment.create(user_id: @js.id, event_id: @bros.id, content: "Bring your appetites!")
Comment.create(user_id: @tg.id, event_id: @bros.id, content: "Invite Brienne plz")

Comment.create(user_id: @ss.id, event_id: @ramen.id, content: "Made the resi, can't wait!")
Comment.create(user_id: @tg.id, event_id: @ramen.id, content: "Hi Brienne")
Comment.create(user_id: @bt.id, event_id: @ramen.id, content: "...")

Comment.create(user_id: @thg.id, event_id: @hotdogs.id, content: "What did the fire say to you Varys?")
Comment.create(user_id: @vs.id, event_id: @hotdogs.id, content: "... let's talk about something else")

Comment.create(user_id: @tg.id, event_id: @bbq.id, content: "Hi Brienne")
Comment.create(user_id: @bt.id, event_id: @bbq.id, content: "I don't remember inviting you ...")
Comment.create(user_id: @ss.id, event_id: @bbq.id, content: "LOL.")
