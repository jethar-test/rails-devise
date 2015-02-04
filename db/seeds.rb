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
				{ code: 'M.Tech.', name: 'Aeronautical Engineering', duration: 4}])

course = Course.find_by(code: 'B.E.')
Syllabus.create([ { code: 'M101', name: 'Computer Aided Design', semester: 1, course: course}, 
				{ code: 'M201', name: 'Heat and Mass Transfer', semester: 2, course: course},
				{ code: 'M301', name: 'Design of Machine Elements', semester: 3, course: course},
				{ code: 'M401', name: 'Metrology and Measurements', semester: 4, course: course},
				{ code: 'M501', name: 'Dynamics of Machines', semester: 5, course: course}])

course = Course.find_by(code: 'B.Tech.')
Syllabus.create([ { code: 'C101', name: 'System Software', semester: 1, course: course}, 
				{ code: 'C201', name: 'Data Structures', semester: 2, course: course},
				{ code: 'C301', name: 'Analysis of Alogrithms', semester: 3, course: course},
				{ code: 'C401', name: 'Web Programming', semester: 4, course: course},
				{ code: 'C501', name: 'Mobile Architecture', semester: 5, course: course}])

course = Course.find_by(code: 'B.Arch.')
Syllabus.create([ { code: 'AR101', name: 'Architectural Design', semester: 1, course: course}, 
				{ code: 'AR201', name: 'Design of Structures', semester: 2, course: course},
				{ code: 'AR301', name: 'Building Construction', semester: 3, course: course},
				{ code: 'AR401', name: 'Specifications and Estimation', semester: 4, course: course},
				{ code: 'AR501', name: 'Interior Design', semester: 5, course: course}])

course = Course.find_by(code: 'M.E.')
Syllabus.create([ { code: 'E101', name: 'Embedded system', semester: 1, course: course}, 
				{ code: 'E201', name: 'System Modeling and Simulation', semester: 2, course: course},
				{ code: 'E301', name: 'Power Electronics', semester: 3, course: course},
				{ code: 'E401', name: 'Advance Processors', semester: 4, course: course},
				{ code: 'E501', name: 'Applications of DSP ', semester: 5, course: course}])

course = Course.find_by(code: 'M.Tech.')
Syllabus.create([ { code: 'A101', name: 'Aerodynamics', semester: 1, course: course}, 
				{ code: 'A201', name: 'Aircraft structures', semester: 2, course: course},
				{ code: 'A301', name: 'Aerospace propulsion', semester: 3, course: course},
				{ code: 'A401', name: 'Rocketry and Space Mechanics', semester: 4, course: course},
				{ code: 'A501', name: 'Aero elasticity', semester: 5, course: course}])

user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email