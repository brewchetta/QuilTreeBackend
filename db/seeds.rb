puts 'Burning all the books to start over'
User.all.each { |user| user.delete}
Story.all.each { |story| story.delete}
Page.all.each { |page| page.delete}
puts 'Smells like Christmas'

puts 'Creating Users'
u1 = User.create(name: 'Chett Tiller')
u2 = User.create(name: 'Jesse Rice-Evans')
u3 = User.create(name: 'Mesha')
u4 = User.create(name: 'Matt Owens')
u5 = User.create(name: 'Mandy Gardner')
u6 = User.create(name: 'Leah Shapiro')
puts 'Created Users'

puts 'The magic is only in what books say, how they stitched the patches of the universe together into one garment for us.'
s1 = Story.new(title: 'Navigator')
u1.stories << s1
s1.save
puts '...'

s2 = Story.new(title: 'The Barrens')
u3.stories << s2
s2.save
puts '...'

s3 = Story.new(title: 'Soft Switch')
u2.stories << s3
s3.save
puts '...'

s4 = Story.new(title: 'Moth Presents')
u5.stories << s4
s4.save
puts '...'

puts 'Thought of some titles'

puts 'Writing a couple pages'
p1 = Page.new(number: 1, content: 'One two three four')
s1.pages << p1
p1.save
puts '...'
p2 = Page.new(number: 1, content: 'Jack fell into the pumpkin patch')
s2.pages << p2
p2.save
puts '...'
puts 'Wrote some pages in a couple stories'
