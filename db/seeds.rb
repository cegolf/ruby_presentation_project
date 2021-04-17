# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker' 

user = User.create([{name: 'Admin', email: 'admin@osu.edu', password: 'admin2021', role: 'instructor'}])
user = User.create([{name: 'Chris', email: 'egolf.8@osu.edu', password: 'admin2021', role: 'instructor'}])

#this number is used to determine number of students, presentations, and feedbacks.
generation_number = 15

#generate students
generation_number.times do
    User.create([{name: Faker::Name.first_name, email: Faker::Internet.email, password: 'user', role: 'student'}])
end

#generate presentations
 students = User.where(role: "student").select("email")
 students.each do |student|
    Presentation.create([{topic: Faker::Company.industry,date: Faker::Time.forward(days: 30, period: :morning), assigned_to: student.email }])
 end

#generate feedback. Outer loop allows for X number feedbacks per presentation
 3.times do 
    
    pres_id = generation_number
    students.each do |student|
        Feedback.create([{content: Faker::Lorem.paragraph(sentence_count: 4), submitted_by: student.email, presentation_id: pres_id}])
        pres_id -= 1
    end
end

 
 