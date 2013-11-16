# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

## Set up blog
@blog = THE_BLOG

@post = @blog.new_post(title: "All good dogs go to heaven", 
  body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  remote_image_url: 'http://farm3.staticflickr.com/2571/4186306577_79ca253443.jpg')
@post.publish

@post = @blog.new_post(title: "Flickr1", 
  body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  remote_image_url: 'http://farm6.staticflickr.com/5492/9949034804_b603313a99.jpg')
@post.publish

@post = @blog.new_post(title: "Spaceship Earth", 
  body: "On my last few trips, I have been struggling with finding shots that aren't so common so that I can make my images stand out. This is a spot I was surprised to find wasn't photographed often!

  After I got home I realized I could have done much better, but I was exhausted when I took this shot (was the last ride I was on before we left after a 3 day binge), so when I go back in October I plan on re-capturing this...only this time doing it right :)",
  remote_image_url: 'http://farm6.staticflickr.com/5492/9949034804_b603313a99.jpg')
@post.publish

@post = @blog.new_post(title: "All good dogs go to heaven", 
  body: "No matter what your political or religious persuasions, I think there is a common belief in every human being on the earth that unites us all (besides America being awesome): that scientists and mystics should devote all of their attention to ensuring that dinosaurs once again roam the earth. While some have expressed doubts about whether this is possible, I have it on good authority that it is possible, and would be super awesome. Think about it: riding a pterodactyl through the drive-through of the nearest McDonald’s to get an Allosaurus burger, then heading over to nearest colosseum to watch two Triceratops battle it out. Maybe as a pre-show, Newman and that cute little spitter dinosaur could put on a show. Now tell me this wouldn’t be the most awesome thing ever. C’mon science, make it happen.",
  remote_image_url: 'http://farm6.staticflickr.com/5253/5448362312_9e2cc6e7c7.jpg')
  
@post.publish

## Set up portfolio

@portfolio = OUR_PORTFOLIO

@project = @portfolio.new_project(title: "American White Ibis", body: "One of the many (real) birds in the Magic Kingdom at Disney World. These are always around the footbridge behind the churro stand. (I'm very familiar with this location). :-) American White Ibis (Eudocimus albus) is a species of wading bird of the ibis family Threskiornithidae which occurs from the mid-Atlantic coast of the United States south through most of the New World tropics. It occurs in marshy wetlands and pools near the coast. It also occurs on mowed grass, lawns, and has become common and nearly fearless in some city parks, where it can be found feeding alone or with other Ibis. It builds a stick nest in trees, bushes, or over water, and 2 to 5 eggs are typically laid. White ibises are monogamous and colonial, usually nesting in mixed colonies with other wading species.", logo_url: "http://farm2.staticflickr.com/1150/1123375937_3abf2696f7.jpg",  challenge: "Challenge: The 19th century French Chateau-style hotel common in early CAnadian history is replicated in the Hotel du Canada at EPCOT's world showcase.", quote: "Seen in the Super~Six Superstar Academy", quotable_person: "Seen in the Super~Six Superstar Academy", quotable_positon_and_company: "CEO, Mashable.com", one_line_project_description: "Come fly with me!", pubdate: "2013-11-16 17:40:46", created_at: "2013-11-16 17:40:46", slogan: "We can do it again", category: "web", summary_image_url: "http://farm4.staticflickr.com/3734/9619839040_4fb09d626d.jpg", main_image_url: "http://farm7.staticflickr.com/6209/6104936160_1f5bf2a691.jpg")
@project.publish

@project = @portfolio.new_project(title: "American White Ibis", body: "One of the many (real) birds in the Magic Kingdom at Disney World. These are always around the footbridge behind the churro stand. (I'm very familiar with this location). :-) American White Ibis (Eudocimus albus) is a species of wading bird of the ibis family Threskiornithidae which occurs from the mid-Atlantic coast of the United States south through most of the New World tropics. It occurs in marshy wetlands and pools near the coast. It also occurs on mowed grass, lawns, and has become common and nearly fearless in some city parks, where it can be found feeding alone or with other Ibis. It builds a stick nest in trees, bushes, or over water, and 2 to 5 eggs are typically laid. White ibises are monogamous and colonial, usually nesting in mixed colonies with other wading species.", logo_url: "http://farm2.staticflickr.com/1150/1123375937_3abf2696f7.jpg",  challenge: "Challenge: The 19th century French Chateau-style hotel common in early CAnadian history is replicated in the Hotel du Canada at EPCOT's world showcase.", quote: "Seen in the Super~Six Superstar Academy", quotable_person: "Seen in the Super~Six Superstar Academy", quotable_positon_and_company: "CEO, Mashable.com", one_line_project_description: "Come fly with me!", pubdate: "2013-11-16 17:40:46", created_at: "2013-11-16 17:40:46", slogan: "We can do it again", category: "web", summary_image_url: "http://farm4.staticflickr.com/3734/9619839040_4fb09d626d.jpg", main_image_url: "http://farm7.staticflickr.com/6209/6104936160_1f5bf2a691.jpg")
@project.publish

@project = @portfolio.new_project(title: "American White Ibis", body: "One of the many (real) birds in the Magic Kingdom at Disney World. These are always around the footbridge behind the churro stand. (I'm very familiar with this location). :-) American White Ibis (Eudocimus albus) is a species of wading bird of the ibis family Threskiornithidae which occurs from the mid-Atlantic coast of the United States south through most of the New World tropics. It occurs in marshy wetlands and pools near the coast. It also occurs on mowed grass, lawns, and has become common and nearly fearless in some city parks, where it can be found feeding alone or with other Ibis. It builds a stick nest in trees, bushes, or over water, and 2 to 5 eggs are typically laid. White ibises are monogamous and colonial, usually nesting in mixed colonies with other wading species.", logo_url: "http://farm2.staticflickr.com/1150/1123375937_3abf2696f7.jpg",  challenge: "Challenge: The 19th century French Chateau-style hotel common in early CAnadian history is replicated in the Hotel du Canada at EPCOT's world showcase.", quote: "Seen in the Super~Six Superstar Academy", quotable_person: "Seen in the Super~Six Superstar Academy", quotable_positon_and_company: "CEO, Mashable.com", one_line_project_description: "Come fly with me!", pubdate: "2013-11-16 17:40:46", created_at: "2013-11-16 17:40:46", slogan: "We can do it again", category: "web", summary_image_url: "http://farm4.staticflickr.com/3734/9619839040_4fb09d626d.jpg", main_image_url: "http://farm7.staticflickr.com/6209/6104936160_1f5bf2a691.jpg")
@project.publish

