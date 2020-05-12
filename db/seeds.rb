# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
  #AdminUser.create!(
  #  email: 'admin@mayimchat.example',
  #  password: 'password',
  #  password_confirmation: 'password'
  #)
  user = User.new(
    email: 'janet@mayimchat.example',
    name: 'Janet Weiss',
    bio: 'Janet is sweet and naive. She and Brad become engaged after the wedding of their friends Ralph Hapschatt and Betty Munroe. They then decide to visit their old friend, Dr. Everett Scott. On the way, however, they get a flat tire, and, noticing a castle, they decide to go there for help.',
    city: 'Denton',
    province: 'Ohio',
    country: 'USA',
    password: 'password',
    password_confirmation: 'password'
  )
  user.avatar.attach(
    io: File.open(Rails.root.join("graphics/people/Susan_Sarandon,_Festival_de_Sitges_2017_(cropped).jpg")),
    filename: 'janet_weiss.jpg',
    content_type: 'image/jpeg'
  )
  user.save!
  user = User.new(
    email: 'brad@mayimchat.example',
    name: 'Brad Majors',
    bio: "Brad is Janet's fiancé. He gives Janet a ring to prove he is not joking about his love for her. Brad is not good about remembering basic vehicle maintainence.",
    city: 'Denton',
    province: 'Ohio',
    country: 'USA',
    password: 'password',
    password_confirmation: 'password'
  )
  user.avatar.attach(
    io: File.open(Rails.root.join("graphics/people/Barry_Bostwick_at_GalaxyCon_Louisville_2019.jpg")),
    filename: 'brad_majors.jpg',
    content_type: 'image/jpeg'
  )
  user.save!
end
