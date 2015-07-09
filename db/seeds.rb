# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admins = User.create([
  {username: 'admin', password:'admin123', password_confirmation:'admin123', email:'admin@admin.com', admin: true}
])

users = User.create([
{username:'BillyBob' , password:'billybob' , password_confirmation:'billybob' , email:'billybob@hillbilly.com'},

])

properties = Property.create([
{address:'2 fire ln.', price:'$70 per night', details:'This place rocks.', avatar_file_name: "house.jpg", avatar_content_type: "image/jpeg", avatar_file_size: 5090, owner_id:1 }  

])
