names = ['Chett', 'Tiller', 'Jesse', 'Rice-Evans', 'Mesha', 'Maren', 'Zephyr', 'Matt', 'Owens', 'Zefyr', 'Octavia', 'Butler', 'Ursula', 'Le Guin', 'Colson', 'Whitehead', 'Brian', 'K. Vaughn', 'Noelle', 'Noelle', 'Stevenson', 'Chimamanda', 'Adiche', 'Virginia', 'Woolf', 'Jean Luc', 'Picard', 'Geordi', 'Beverly', 'Crusher', 'Wesley', 'Seven of Nine', 'Janeway', 'Katherine', 'Data', 'Sisko', 'Benjamin', 'Kira', 'Nerise', 'Misty', 'Brock', 'Ash', 'Ketchum', 'Gary', 'Surge', 'Leonard', 'Nimoy', 'Bilbo', 'Baggins', 'Frodo', 'Samwise', 'Gandalf', 'Zeus', 'Aphrodite', 'Thor', 'Odin', 'Nidhogg', 'Surtur', 'Lady Gaga', 'Lorde']

titles = ['LumberJanes', 'Ms Marvel', 'Captain Marvel', 'Black Panther', 'Thor', 'Paper Girls', 'Earthsea', 'Monstress', 'The Golden Compass', 'Purple Hibiscus', 'Sugar Run', 'Navigator', 'Soft Switch', 'Lilliths Brood', 'Half of a Yellow Sun', 'Moby Dick', 'Orlando', 'A Christmas Carol', 'For Whom the Bell Tolls', 'Carebears', 'She-Ra', 'Ninja Turtles', 'Necronomicon', 'Death of a Salesman', 'To Kill A Mockingbird', 'The Crucible', 'Saga', 'Nimona', 'A Wrinkle in Time', 'Mars Attacks', 'The Abyss', 'The Hobbit', 'The Two Towers', 'Return of the King', 'The Fellowship of the Ring', 'Trainers Guide to Pokemon', 'Dragonball Z', 'Mercury', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto', 'Adama', 'Skywalker', 'Luke', 'Anakin', 'Obi Wan', 'Leia']

puts 'Burning all the books to start over'
User.all.each { |user| user.delete}
Story.all.each { |story| story.delete}
Page.all.each { |page| page.delete}
puts 'Smells like Christmas'

puts 'Finding writers'
puts '...'
500.times do
  User.create(name: names[rand(names.length - 1)] + ' ' + names[rand(names.length - 1)], bio:'A beautiful writer with at least ' + rand(10).to_s + ' unique attributes. We love them to death, like literally until they die. OMG I JUST THOUGHT OF SOMETHING. Oh woops, lost it. NO WAIT THERE IT IS AGAIN! Wait, nevermind. Clearly just filling space, toodleytoo. Did you hear what names ' + names[rand(names.length - 1)] + ' said to ' + names[rand(names.length - 1)] + '? I did not actually hear. What is a pirates favorite letter? A pirates first love is the C. Get it? Okay, we are done here.')
end
puts 'Writers chained to their desks'

puts 'Thinking of titles'
puts '...'
1000.times do
  Story.create(title: titles[rand(titles.length - 1)] + ' vol' + rand(100).to_s, description: "A retelling of #{names[rand(names.length - 1)]}'s trials and tribulations.", image: 'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1', user_id: User.all[rand(User.all.length - 1)].id)
end
puts 'Thought of some titles'
