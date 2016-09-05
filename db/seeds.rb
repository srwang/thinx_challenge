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

Post.create(title: 'Ipsum', content: ' Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.', user_id: 2)

Comment.create(content: 'have you tried this game where you are blindfolded and spun around and then smash a watermelon on the beach', user_id: 2, post_id: 1);

Comment.create(content: 'no...', comment_id: 1, user_id: 1);

Comment.create(content: "i have not", comment_id: 1, user_id: 1);

Comment.create(content: 'also eat it with mint', user_id: 2, post_id: 1);