# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(
  [
    {
      email: "beatles1@gmail.com",
      name: "Tom",
      password: "11111111",
      remote_avatar_url: "http://tradecrafted.com/images/mentors/grahamhunter.png"
    },
    {
      email: "beatles2@gmail.com",
      name: "Jazz",
      password: "11111111",
      remote_avatar_url: "http://tradecrafted.com/images/mentors/katerutter.png"
    },
    {
      email: "beatles3@gmail.com",
      name: "Adam",
      password: "11111111",
      remote_avatar_url: "http://tradecrafted.com/images/mentors/lauraklein.png"
    }
  ]
)
