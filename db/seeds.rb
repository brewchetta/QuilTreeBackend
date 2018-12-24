names = ['Chett', 'Tiller', 'Jesse', 'Rice-Evans', 'Mesha', 'Maren', 'Zephyr', 'Matt', 'Owens', 'Zefyr', 'Octavia', 'Butler', 'Ursula', 'Le Guin', 'Colson', 'Whitehead', 'Brian', 'K. Vaughn', 'Noelle', 'Noelle', 'Stevenson', 'Chimamanda', 'Adiche', 'Virginia', 'Woolf']

titles = ['LumberJanes', 'Ms Marvel', 'Captain Marvel', 'Black Panther', 'Thor', 'Paper Girls', 'Earthsea', 'Monstress', 'The Golden Compass', 'Purple Hibiscus', 'Sugar Run', 'Navigator', 'Soft Switch', 'Lilliths Brood', 'Half of a Yellow Sun', 'Moby Dick', 'Orlando']

puts 'Burning all the books to start over'
User.all.each { |user| user.delete}
Story.all.each { |story| story.delete}
Page.all.each { |page| page.delete}
puts 'Smells like Christmas'


puts 'Finding writers'
100.times do
  puts '...'
  User.create(name: names[rand(names.length - 1)] + rand(1000).to_s, bio:'A beautiful writer with at least ' + rand(10).to_s + ' unique attributes.')
end
puts 'Writers chained to their desks'

puts 'Thinking of titles'
200.times do
  puts '...'
  Story.create(title: titles[rand(titles.length - 1)] + ' vol' + rand(1000).to_s, description: "A retelling of #{names[rand(names.length - 1)]}'s trials and tribulations.", image: 'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1', user_id: User.all[rand(User.all.length - 1)].id)
end
puts 'Thought of some titles'

# puts 'Writing a couple pages'
# p1 = Page.new(number: 1, content: 'One two three four', image: 'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1')
# s1.pages << p1
# p1.save
# puts '...1'
