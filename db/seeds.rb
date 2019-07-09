# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rent.destroy_all
Listing.destroy_all
User.destroy_all
Rating.destroy_all

user_1 = User.create(name: "Rei", password:'rei', image: 'https://nypdecider.files.wordpress.com/2019/04/one-punch-man-1-1.jpg?quality=90&strip=all&w=646&h=431&crop=1')

user_2 = User.create(name:"Pete", password:'pete', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1ZjORmWJA8hWeXd33zV8_azVcV2SsbS16ua6s26hzdiobsf64GA')

user_3 = User.create(name:"Luka", password:'luka', image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtQybnb8Zjijep3qNFkHLyB9cX2JPQ3Ph4_GLQMZwa7zLFEu3JWA")

user_4 = User.create(name:"Mallory",password:'mallory', image:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROpkNcBKW0I2bTVqdp4DjTW3HrRYbHzeK4j9JaTxKmerr4EgJK')

user_5 = User.create(name:"Ernie",password:'ernie', image:"https://image.shutterstock.com/image-photo/knight-sword-shield-260nw-762608260.jpg")

user_6 = User.create(name:"Dragon",password:'dragon', image:"http://www.howarddavidjohnson.com/Misty_Mountain_Dragon.jpg")

user_7 = User.create(name:"Jamil", password:'gangster', image:"https://thenypost.files.wordpress.com/2018/08/trump_capone.jpg?quality=90&strip=all&w=618&h=410&crop=1")

user_8 = User.create(name:"Susan", password:'susan', image:'https://a-z-animals.com/media/animals/images/470x370/giraffe_10.jpg')



listing_1 = Listing.create(user_id: user_1.id, renter: user_2.id, category:"keyboards", rented: true, image:'https://d2wclktjr2mmlu.cloudfront.net/media/catalog/product/cache/image/680x505/e9c3970ab036de70892d86c6d221abfe/N/o/Nord_Stage3-HP_01.jpg', instrument_name: 'Nord Stage Piano', description: '88-note Triple Sensor key bed with grand weighted action for authentic Piano touch and feel; Nord Virtual Hammer Action Technology enables you to produce a new note without lifting the key completely for smoother repetitions', user_notes: 'Plays really well. The board is in tip top condition, and I rarely play it. It can be a bit heavy to carry so make sure you have a car or transportaion to help with the move.', price: 55)

listing_2 = Listing.create(user_id: user_1.id, category: "keyboards", renter: nil, rented: false, image:'https://www.zeobrothers.com/wp-content/uploads/2017/03/suitcase88.jpg', instrument_name: 'Fender Rhodes', description: 'Mk1 88 key Rhodes suitcase. (piano and large floor standing 4x12 speaker cabinet) The Rhodes Suitcase models all have a 4×12″ cabinet with two speakers facing both directions resulting in a very unique sound when the stereo tremolo circuitry is activated. In addition to this classic tremolo sound, the built in amplification is a huge bonus for players that do not have a competent amplifier to pair with their Rhodes.  This suitcase model is hard to come by! ', user_notes: 'This model is amazing. I honestly cant recommend this keyboard enough. Perfect sound, wonderful tremolo. Would be great for a one-time gig or a recording session.', price: 80)

listing_3 = Listing.create(user_id: user_1.id, category: "keyboards", renter: nil, rented: false, image:'https://hammondorgans.com.au/wp-content/uploads/2017/03/2Hammond-Organ-B-3-Mark-2-New-Release-large-1.jpg', instrument_name: 'B3 Hammond Organ', description: '1957
HAMMOND B-3 with Bass Pedals, PR40 & JR10 (Rare) Tone Cabinets, Bench, with all the original cables.', user_notes: 'Organ and all cabinets have been Church kept, is in excellent working condition.There are some minor bumps and scratches consistent with the age. Local Pickup or other arrangements can be made. Ask any questions you need.', price: 120)

listing_4 = Listing.create(user_id: user_3.id, category: "guitars", renter: user_4.id, rented: true, image:'https://americanvintageguitar.com/wp-content/uploads/2017/02/60-strat_9205-800.jpg', instrument_name: '1960 American Fender Stratocaster', description: 'Fender started the 60s strong introducing new models like the Jaguar and the Jazz Bass. The Stratocaster of 1960 changed little from the Strat of 1959. By this point almost all Strats have the slab Rosewood fingerboard, as well as the updated 3-ply pickguard. The neck continued to be made in a thin D-shaped profile.', user_notes: 'Ive owned the Guitar since 1997, and its never left my House. Slab Board w Clay Dots. 8.9 Condition, aside from the chemical reaction on the back from the original Cord, and a few minor nicks. This is a definite Investment Grade Guitar.  Un-circulated, Second Owner Guitar.', price: 110)

listing_5 = Listing.create(user_id: user_3.id, category: "guitars", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--fGdI9AE4--/a_exif,c_limit,e_unsharp_mask:80,f_auto,fl_progressive,g_south,h_620,q_90,w_620/v1531500177/ws98amsh1lcnaad0qubp.jpg', instrument_name: 'Gibson Les Paul Custom 1978 Cherry Sunburst', description: 'While made during one of the companys most controversial eras when many players saw a sacrifice of quality for profit margins, the Gibson Les Paul Customs of the Norlin Era can be diamond-in-the-rough finds for players with a keen eye. In particular, if youre looking for iconic LP growl with the workhorse construction that made these guitars a legend in the first place, many guitarists and luthiers alike point to the late 70s/early 80s models as capstones of the era.', user_notes: 'Fantastic 1978 custom Les Paul. Is absolutely incredible sounding that only comes with 40 years of age and wood maturation. Frets are in great shape and it’s a dream to play. Light scratches on the back of guitar and patina on the pickups. Has OHSC (chainsaw case) with the Gibson branding. ', price: 50)

listing_6 = Listing.create(user_id: user_4.id, category: "drums", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--ibrhZfoX--/f_auto,t_supersize/v1537376748/logc2nqbudxpohccpbe2.jpg', instrument_name: 'Gretsch Round Badge Drum Set', description: '14x18 Bass Drum, 8x12 Rack Toms, 14x14 Floor Tom, 5x14 Snare Drum, 7 Ply Maple, 30 Degree Bearing Edge, Gretsch Double Flanged “302” Hoops,Gretsch Silver Sealer,UPC: 647139387444', user_notes: 'The 2016 Renown delivers the traditional Gretsch sound with an incredible open, harmonic tone that supplies the versatility needed to meet the demands of the hardest working drummers.', price: 45)

listing_7 = Listing.create(user_id: user_4.id, category: "drums", renter: user_5.id, rented: true, image:'https://images.reverb.com/image/upload/s--_Gfjvg14--/f_auto,t_supersize/v1562008674/jh2z7gclcfwe2gfznqtx.jpg', instrument_name: 'Ludwig Classic Maple Ringo Star 3 Piece Drum Set Kit', description: 'Rack Tom-9x13, Floor Tom-16x16, Bass Drum-14x22', user_notes: 'This is kit is in mint condition, with minimal stick marks on the batter heads, and no blemishes in the cosmetic view of the shells. The floor tom comes with the Atlas floor tom brackets, and the rack tom comes with no mounting bracket.', price: 80)

listing_8 = Listing.create(user_id: user_4.id, category: "drums", renter: user_5.id, rented: true, image:'https://images.reverb.com/image/upload/s--nRt5l5si--/f_auto,t_large/v1562016195/hhdjopgut1gsqu79ugzl.jpg', instrument_name: 'Pearl Session Studio 3pc Drum Kit MINT', description: 'This item is in excellent working condition, barely used, and includes original packaging.', user_notes: 'This item is in excellent working condition, barely used, and includes original packaging.',price: 65)

listing_9 = Listing.create(user_id: user_4.id, category: "drums", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--j5-HCWal--/f_auto,t_large/v1562012666/xwmuggchzkfnn6500k86.jpg', instrument_name: 'DW Maple Collector 2003', description: 'Sizes are diameter by depth. All drums have factory re-rings and gold hardware! 22x18, 16x13, 14x12, 12x9, 10x8', user_notes: 'These drums sound as great as they look. They are head turners in every way. It’s a 2003 Exotic Quilted Maple over standard maple shells. The color is Amber to tobacco burst. Condition is really good',price: 90)

listing_10 = Listing.create(user_id: user_2.id, category: "basses", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--yGZTJXBr--/f_auto,t_supersize/v1551809094/qmf7ztzzq4yswinyazns.jpg', instrument_name: 'Fender Jazz Bass Sunburst 1962', description: 'One piece maple neck with unbound Brazilian rosewood slab board. 7MAR62A neck stamp. Original black bobbin pickups and wiring with 1962 pot codes. The bridge pickup has been rewound. Neck 7.9k ohms bridge 7.1k ohms.Original hardware except for replaced neck pickup cover.', user_notes: 'The fingerboard has been removed and reglued, probably in order to repair the truss rod. The side dots were replaced during this process. -The guitar has been refretted. The fingerboard was planed for the the refret and is somewhat thin towards the neck heel. -The nut has been replaced. -The neck pickup cover is not original. -The bridge pickup has been rewound.', price: 90)

listing_11 = Listing.create(user_id: user_2.id, category: "basses", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--WZ-33-re--/f_auto,t_supersize/v1554329703/cd2ypkwnz9kdnjw6op2q.jpg', instrument_name: 'Fender Precision Bass 1962', description: 'Refinished Body.Alder Body.Alder Solid Body -- The body has been refinished.Maple Neck.Fingerboard Material: Brazilian Rosewood.Neck Profile: D-Shape.Neck Thickness (IN): 1st fret: .82" / 12th: .98". Fingerboard Radius: 7.25. Nut Width: 1-11/16 in', user_notes: 'Currently, set up with 50-105 gauge strings and low action. The truss rod is all the way loose - We recommend this bass setup with at least medium gauge strings for optimal relief and truss rod adjustability. -- The serial number and pot codes date to 1962.', price: 45)

listing_12 = Listing.create(user_id: user_2.id, category: "basses", renter: user_6.id, rented: true, image:'https://images.reverb.com/image/upload/s--wcxIs7mp--/f_auto,t_large/v1524070874/bgwdartjly44wfw5wah7.jpg', instrument_name: '2017 Rickenbacker', description: 'The Rickenbacker 4003 Bass in Natural Maple Glow! Rickenbacker 4003 Bass Maple Glo Natural With Case The Classic Rickenbacker bass - famous for its ringing sustain, treble punch and solid underlying bass. A subtle strip of binding graces the elegantly curved body and the Rosewood fingerboard.', user_notes: '2017 Rickenbacker 4003 Mapleglo Bass in Brand New Condition. Comes with original hard shell case.', price: 48)

listing_13 = Listing.create(user_id: user_2.id, category: "basses", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--TSbs_hOR--/f_auto,t_supersize/v1537914296/oqlgb2uxm3vxcexdwuww.jpg', instrument_name: 'Fender Player Jaguar Bass', description: 'The Rickenbacker 4003 Bass in Natural Maple Glow! Rickenbacker 4003 Bass Maple Glo Natural With Case The Classic Rickenbacker bass - famous for its ringing sustain, treble punch and solid underlying bass. A subtle strip of binding graces the elegantly curved body and the Rosewood fingerboard.', user_notes: '2017 Rickenbacker 4003 Mapleglo Bass in Brand New Condition. Comes with original hard shell case.', price: 48)


listing_14 = Listing.create(user_id: user_8.id, category: "brass", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--4FpBij7X--/a_exif,c_limit,e_unsharp_mask:80,f_auto,fl_progressive,g_south,h_1600,q_80,w_1600/v1532534164/wgazkdccwzhrf7xfdlny.jpg', instrument_name: 'Bach Stradivarious Series Bb Trumpet', description: 'The #25 leadpipe allows for slight resistance that is effective in centering tone production. These features combined with a .459-inch medium-large bore allow the player to produce a well-rounded sound while not over-extending the endurance level of the player.', user_notes: 'Good for all-around playing, this Bach 180 Strad Pro Trumpet features a standard weight body and #37 bell, plus a standard construction #25 mouthpipe in silver finish. The most popular Bach Stradivarius trumpet available today is the 180S37 with a yellow brass bell. ', price: 34)

listing_15 = Listing.create(user_id: user_8.id, category: "brass", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--oBb3n6hR--/a_exif,c_limit,e_unsharp_mask:80,f_auto,fl_progressive,g_south,h_620,q_90,w_620/v1487353822/k2r5jfzbqtqdvranxa6b.jpg', instrument_name: 'Bach Model 42B Stradivarius Tenor Trombone', description: 'Stradivarius Bb/F, .547" bore, 8-1/2" one-piece hand-hammered yellow brass bell, chrome plated nickel-silver inner handslide tubes, brass outer handslide tubes, traditional wrap "F" section with traditional rotor, clear lacquer finish, genuine Vincent Bach 6-1/2A large shank mouthpiece and zippered Cordura covered wood shell case.', user_notes: 'Beautiful sounding trombone. Ive playing this trombone for years and have always really enjoyed playing it. ', price: 60)

listing_16 = Listing.create(user_id: user_8.id, category: "brass", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--nOviLmzU--/f_auto,t_supersize/v1561661772/uhkoswosz0lvs4firmyd.jpg', instrument_name: 'EM Winston Baritone', description: 'Allora 500 Series instruments, like this AEP-550 Paris Series Compensating Euphonium, provide professional quality. ', user_notes: 'They are perfect for advancing students, adult enthusiasts and professional musicians.This item was returned in great condition. It looks and plays like new, with only minor signs of use (slight scuffs, etc.).', price: 25)

listing_17 = Listing.create(user_id: user_8.id, category: "brass", renter: nil, rented: false, image:'https://images.reverb.com/image/upload/s--81_OXwro--/f_auto,t_supersize/v1562002805/ri5gptaqcvkitcoprhk1.jpg', instrument_name: 'Yamaha Standard Bb Cornet', description: 'Cornets are highly recommended for beginner band students, instead of a trumpet. These are easier to handle and cheaper, compared to the longer, heavier, and harder to play trumpet.', user_notes: 'Perfect condition Yamaha cornet! We purchased it from Mississippi Music in Jackson, MS in 2016. It was only used for 2 years and cleaned quite often. The cornet, mouthpiece, and trumpet/cornet cleaning kit (valve oil, tuning slide grease, cleaning tools) are included PLUS extra slightly-used valve oil and tuning slide grease. ', price: 25)






rating_1 = Rating.create(rater_id: user_2.id, rated_id: user_1.id, stars: 5, review: "Rei was great. I rented his Fender Rhodes for a recording session I had and it was a dream to play. Thanks again Rei will rent again soon!")

rating_2 = Rating.create(rater_id: user_2.id, rated_id: user_3.id, stars: 4, review: "Luka was great owner. I rented his Fender Strat for a tour I had on the East Coast and it was very successful! Luka youre the man!")

rating_3 = Rating.create(rater_id: user_4, rated_id: user_1.id, stars: 3, review: "Rei was a great guy, the only reason Im giving a 3 for this was cause there was a big miscommunication on his part and I wasnt able to borrow his Nord Keyboard for the time we agreed on. Make sure you double check your dates in the future...")

rating_4 = Rating.create(rater_id: user_3.id, rated_id: user_1.id, stars: 4, review: "Rei was a good guy. I plan on renting from him again soon.")

rating_5 = Rating.create(rater_id: user_4.id, rated_id: user_1.id, stars: 4, review: "LOVE the Nord. I can't say it enough I HAVE to get one of these ASAP. Thanks for letting me borrow yours Rei.")

rating_6 = Rating.create(rater_id: user_1.id, rated_id: user_3.id, stars: 4, review: "Luka was crying when I showed up. THOSE TEARS!!! Get ready for Friday LUKA!")
