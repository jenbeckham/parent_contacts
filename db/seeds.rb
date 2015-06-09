# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Teacher.create!(email: "bestteacher@gmail.com", password: "bestteacher1" )
Teacher.create!(email: "worstteacher@gmail.com", password: "worstteacher1")
Teacher.create!(email: "okteacher@gmail.com", password: "okteacher1")
Teacher.create!(email: "coolteacher@gmail.com", password: "coolteacher1")
Teacher.create!(email: "creepyteacher@gmail.com", password: "creepyteacher1")
