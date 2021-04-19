# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker' 

user = User.create([{name: 'Admin', email: 'admin@osu.edu', password: 'admin2021', role: 'instructor'}])

student_user = User.create([{name: 'Test Student', email: 'user@osu.edu', password: 'user', role: 'student'}])

#this number is used to determine number of students, presentations, and feedbacks.
generation_number = 15

#generate students
generation_number.times do
    User.create([{name: Faker::Name.first_name, email: Faker::Internet.email, password: 'user', role: 'student'}])
end

#generate presentations
 students = User.where(role: "student").select("email")
 counter = 1
 students.each do |student|
    if(counter % 3 == 0)
        Presentation.create([{topic: Faker::Company.industry,date: Faker::Time.forward(days: 30, period: :morning), assigned_to: student.email}])
    else
        Presentation.create([{topic: Faker::Company.industry,date: Faker::Time.forward(days: 30, period: :morning), assigned_to: student.email,grade: Faker::Number.between(from: 0, to: 100) }])
    end
    counter += 1
end

#generate feedback. Outer loop allows for X number feedbacks per presentation
 3.times do 
    shuffled_students = students.shuffle
    counter = generation_number
    shuffled_students.each do |student|
        if(student.email !=  students[counter].email )
            Feedback.create([{content: Faker::Lorem.paragraph(sentence_count: 4), submitted_by: student.email, presentation_id: shuffled_students[counter].email}])
        end
        counter -= 1
    end
end

 
 