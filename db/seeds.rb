# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Course.create([ { code: 'B.E.', name: 'Mechanical Engineering', duration: 8}, 
				{ code: 'B.Tech.', name: 'Information Technology', duration: 8},
				{ code: 'B.Arch.', name: 'Archeticural Engineering', duration: 8},
				{ code: 'M.E.', name: 'Electronics Engineering', duration: 4},
				{ code: 'M.Tech', name: 'Computer Science Engineering', duration: 4}])

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email