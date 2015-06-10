# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Teacher.create!(name: "Betty", email: "bestteacher@gmail.com", password: "bestteacher1" )
Teacher.create!(name: "Harry", email: "worstteacher@gmail.com", password: "worstteacher1")
Teacher.create!(name: "Sue", email: "okteacher@gmail.com", password: "okteacher1")
Teacher.create!(name: "Jackson", email: "coolteacher@gmail.com", password: "coolteacher1")
Teacher.create!(name: "Howard", email: "creepyteacher@gmail.com", password: "creepyteacher1")
