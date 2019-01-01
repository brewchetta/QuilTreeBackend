names = ['Chett', 'Tiller', 'Jesse', 'Rice-Evans', 'Mesha', 'Maren', 'Zephyr', 'Matt', 'Owens', 'Zefyr', 'Octavia', 'Butler', 'Ursula', 'Le Guin', 'Colson', 'Whitehead', 'Brian', 'K. Vaughn', 'Noelle', 'Noelle', 'Stevenson', 'Chimamanda', 'Adiche', 'Virginia', 'Woolf', 'Jean Luc', 'Picard', 'Geordi', 'Beverly', 'Crusher', 'Wesley', 'Seven of Nine', 'Janeway', 'Katherine', 'Data', 'Sisko', 'Benjamin', 'Kira', 'Nerise', 'Misty', 'Brock', 'Ash', 'Ketchum', 'Gary', 'Surge', 'Leonard', 'Nimoy', 'Bilbo', 'Baggins', 'Frodo', 'Samwise', 'Gandalf', 'Zeus', 'Aphrodite', 'Thor', 'Odin', 'Nidhogg', 'Surtur', 'Lady Gaga', 'Lorde', 'Mallory', 'Ortberg']

titles = ['LumberJanes', 'Ms Marvel', 'Captain Marvel', 'Black Panther', 'Thor', 'Paper Girls', 'Earthsea', 'Monstress', 'The Golden Compass', 'Purple Hibiscus', 'Sugar Run', 'Navigator', 'Soft Switch', 'Lilliths Brood', 'Half of a Yellow Sun', 'Moby Dick', 'Orlando', 'A Christmas Carol', 'For Whom the Bell Tolls', 'Carebears', 'She-Ra', 'Ninja Turtles', 'Necronomicon', 'Death of a Salesman', 'To Kill A Mockingbird', 'The Crucible', 'Saga', 'Nimona', 'A Wrinkle in Time', 'Mars Attacks', 'The Abyss', 'The Hobbit', 'The Two Towers', 'Return of the King', 'The Fellowship of the Ring', 'Trainers Guide to Pokemon', 'Dragonball Z', 'Mercury', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto', 'Adama', 'Skywalker', 'Luke', 'Anakin', 'Obi Wan', 'Leia', 'Southern Cross', 'Y the Last Man', 'The Merry Spinster']

images = [
  'https://images.unsplash.com/photo-1496062851822-495efe173ecd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
  'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1',
  'https://images.unsplash.com/photo-1518713337836-f828c91becc0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1600&q=80',
  'https://images.unsplash.com/photo-1459609336665-6ef3866c8930?ixlib=rb-1.2.1&auto=format&fit=crop&w=1506&q=80',
  'https://images.unsplash.com/photo-1522682078546-47888fe04e81?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80',
  'https://images.unsplash.com/photo-1467767079704-1e5389c42c9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1510&q=80'
]

# Image credits in order
# Fancy Crave | @fancycrave
# Carebears or whatever
# Rich Dahlgren | @clamstorm
# Hannes Wolf | @hannes_wolf
# Hayes Potter | @hayespotter
# Ashley Knedler | @ashkned

puts 'Burning all the books to start over'
User.all.each { |user| user.delete}
Story.all.each { |story| story.delete}
Page.all.each { |page| page.delete}
puts 'Smells like Christmas'

puts 'Finding writers'
1000.times do
  User.create(name: names[rand(names.length - 1)] + ' ' + names[rand(names.length - 1)], bio:'A beautiful writer with at least a few unique attributes. We love them to death, like literally until they die. OMG I JUST THOUGHT OF SOMETHING. Oh woops, lost it. NO WAIT THERE IT IS AGAIN! Wait, nevermind. Clearly just filling space, toodleytoo. Did you hear what is going on? Me neight. I did not actually hear. What is a pirates favorite letter? A pirates first love is the C. Get it? Okay, we are done here.')
  print '.'
end
puts 'Writers chained to their desks'

puts 'Thinking of titles'
10000.times do
  Story.create(title: titles[rand(titles.length - 1)] + ' vol' + rand(100).to_s, description: "A retelling of #{names[rand(names.length - 1)]}'s trials and tribulations.", image: images[rand(images.length - 1)], user_id: User.all[rand(User.all.length - 1)].id)
  print '.'
end
puts 'Thought of some titles'
