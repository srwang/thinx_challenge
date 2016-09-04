# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(name: 'firstUser', password: 'firstUser');

User.create(name: 'secondUser', password: 'secondUser');

Post.create(title: 'watermelon', content: 'what are some creative ways to prepare it?', user_id: 1);

Post.create(title: 'bitter melon', content: 'does anyone know how to get rid of the bitter when you stir fry?', user_id: 2);

Comment.create(content: 'have you tried this game where you are blindfolded and then smash a watermelon on the beach', user_id: 2, post_id: 1);

Comment.create(content: 'no...', parent_comment_id: 1, user_id: 1, post_id: 1);