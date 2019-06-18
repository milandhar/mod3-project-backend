# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Break.destroy_all


milan = User.create(id: 0, user_name: "milan1993", phone_number: "3015182893", default_url: "learn.co", default_break_time: 10)
alex = User.create(id: 1, user_name: "alexiscool", phone_number: "5035300842", default_url: "espn.go.com", default_break_time: 8)
austen = User.create(id: 2, user_name: "austenh", phone_number: "3015182893", default_url: "wikipedia.com", default_break_time: 5)

break_a = Break.create(id: 0, user_id: 0,  created_at: "2019-06-17T21:32:42.298Z", updated_at: "2019-06-17T21:42:42.298Z", active: false)
break_b = Break.create(id: 1, user_id: 1,  created_at: "2019-06-17T19:32:42.298Z", updated_at: "2019-06-17T19:40:42.298Z", active: false)
break_c = Break.create(id: 2, user_id: 2,  created_at: "2019-06-17T17:32:42.298Z", updated_at: "2019-06-17T17:42:42.298Z", active: false)
break_d = Break.create(id: 3, user_id: 0,  created_at: "2019-06-17T17:32:42.298Z", updated_at: "2019-06-17T17:42:42.298Z", active: false)
break_e = Break.create(id: 4, user_id: 2,  created_at: "2019-06-17T17:32:42.298Z", updated_at: "2019-06-17T17:42:42.298Z", active: false)
