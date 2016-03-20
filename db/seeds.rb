# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Comment.destroy_all


Post.create(bird: "cardinal", img_url: "http://www.birds-of-north-america.net/images/northern-cardinal-12.jpg", date_seen: "01/17/2015", city: "Washington", state: "DC", field_notes: "It was a cold day and the ground was covered in snow. Spotted in my backyard.")
Post.create(bird: "ruby-throated hummingbird", img_url: "http://www.birds-of-north-america.net/images/ruby-throated-hummingbird-14.jpg", date_seen: "05/20/2015", city: "Baltimore", state: "MD", field_notes: "My dog spotted it first. The female was also present.")
Post.create(bird: "bald eagle", img_url: "http://www.birds-of-north-america.net/images/xbald-eagle-14.jpg.pagespeed.ic.vLC3zQ6iui.jpg", date_seen: "11/15/2015", city: "Newark", state: "DE", field_notes: "My usual eagle. I see this guy whenever I take the train.")

Comment.create(body:"Nice eagle you've got there.", post_id: 3)
Comment.create(body:"Cardinal in winter. Very nice.", post_id: 1)
Comment.create(body:"I get a lot of hummingbirds around where I live.", post_id: 2)
