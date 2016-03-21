# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all
Post.destroy_all
Comment.destroy_all

jeff = User.create(username:'jeff', password:'jeff', first_name: "Jeffrey", last_name: "Eaton", city: "Washington", state: "DC")
maureen = User.create(username: "maureen", password: "maureen", first_name: "Maureen", last_name: "Thorson", city: "Washington", state: "DC")
dan = User.create(username: "dan", password: "dan", first_name: "Dan", last_name: "Gutstein", city: "Baltimore", state: "MD")

Post.create(bird: "cardinal", img_url: "http://www.birds-of-north-america.net/images/northern-cardinal-12.jpg", date_seen: "01/17/2015", city: "Washington", state: "DC", field_notes: "It was a cold day and the ground was covered in snow. Spotted in my backyard.", user_id: 1)
Post.create(bird: "ruby-throated hummingbird", img_url: "http://www.birds-of-north-america.net/images/ruby-throated-hummingbird-14.jpg", date_seen: "05/20/2015", city: "Baltimore", state: "MD", field_notes: "My dog spotted it first. The female was also present.", user_id: 2)
Post.create(bird: "bald eagle", img_url: "http://www.birds-of-north-america.net/images/xbald-eagle-14.jpg.pagespeed.ic.vLC3zQ6iui.jpg", date_seen: "11/15/2015", city: "Newark", state: "DE", field_notes: "My usual eagle. I see this guy whenever I take the train.", user_id: 3)

Comment.create(body:"Nice eagle you've got there.", user_id: 1, post_id: 3)
Comment.create(body:"Cardinal in winter. Very nice.", user_id: 3, post_id: 1)
Comment.create(body:"I get a lot of hummingbirds around where I live.", user_id: 3, post_id: 2)
