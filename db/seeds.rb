puts 'Burning all the books to start over'
User.all.each { |user| user.delete}
Story.all.each { |story| story.delete}
Page.all.each { |page| page.delete}
puts 'Smells like Christmas'

puts 'Finding writers'
u1 = User.create(name: 'Chett Tiller')
puts '...1'
u2 = User.create(name: 'Jesse Rice-Evans')
puts '...2'
u3 = User.create(name: 'Mesha')
puts '...3'
u4 = User.create(name: 'Matt Owens')
puts '...4'
u5 = User.create(name: 'Mandy Gardner')
puts '...5'
u6 = User.create(name: 'Leah Shapiro')
puts '...6'
puts 'Writers chained to their desks'

puts 'Thinking of titles'
s1 = Story.new(title: 'Navigator', description: 'A retelling of Kill Bill with the cast of the CareBears', image: 'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1')
u1.stories << s1
s1.save
puts '...1'

s2 = Story.new(title: 'The Barrens', description: 'Unclear, possibly due to the fact that theres just so much love in the air.', image: 'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1')
u3.stories << s2
s2.save
puts '...2'

s3 = Story.new(title: 'Soft Switch', description: 'Honestly this is just test data, you want me to write a whole fuckin novel?', image: 'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1')
u2.stories << s3
s3.save
puts '...3'

s4 = Story.new(title: 'Moth Presents', description: 'The lovely Ms Gardner tells us wonderful stories before bed.', image: 'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1')
u5.stories << s4
s4.save
puts '...4'
puts 'Thought of some titles'

puts 'Writing a couple pages'
p1 = Page.new(number: 1, content: 'One two three four', image: 'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1')
s1.pages << p1
p1.save
puts '...1'
p2 = Page.new(number: 1, content: 'Jack fell into the pumpkin patch', image: 'https://pmcvariety.files.wordpress.com/2018/09/care-bears.jpg?w=1000&h=563&crop=1')
s2.pages << p2
p2.save
puts '...2'
puts 'Like literally just a couple, writing is hard work!'
