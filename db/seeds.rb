# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

House.destroy_all
Teacher.destroy_all
Student.destroy_all
Rating.destroy_all

house_names =["gryffindor","hufflepuff","ravenclaw","slytherin",]
house_names.each do |house|
    House.create(name: house)
end

teacher_names = ["Dolores Umbridge","Quirinus Quirrell","Gilderoy Lockhart","Horace Slughorn","Rubeus Hagrid","Sybill Trelawney","Severus Snape","Remus Lupin","Pomona Sprout","Filius Flitwick","Albus Dumbledore","Minerva Mcgonagall",]
teacher_houses = House.all

gryffindor = House.find_by(name: "gryffindor")
Teacher.create(name: teacher_names.sample, house: gryffindor)
Teacher.create(name: teacher_names.sample, house: gryffindor)
Teacher.create(name: teacher_names.sample, house: gryffindor)

hufflepuff = House.find_by(name: "hufflepuff")
Teacher.create(name: teacher_names.sample, house: hufflepuff)
Teacher.create(name: teacher_names.sample, house: hufflepuff)
Teacher.create(name: teacher_names.sample, house: hufflepuff)

ravenclaw = House.find_by(name: "ravenclaw")
Teacher.create(name: teacher_names.sample, house: ravenclaw)
Teacher.create(name: teacher_names.sample, house: ravenclaw)
Teacher.create(name: teacher_names.sample, house: ravenclaw)

slytherin = House.find_by(name: "slytherin")
Teacher.create(name: teacher_names.sample, house: slytherin)
Teacher.create(name: teacher_names.sample, house: slytherin)
Teacher.create(name: teacher_names.sample, house: slytherin)

student_names = ["Harry Potter","Ron Weasley","Hermione Granger","Seamus Finnigan",]
student_names.each do |student|
    Student.create(name: student)
end

teachers = Teacher.all
students = Student.all
ratings = [true, false]
25.times do
    Rating.create(student: students.sample, teacher: teachers.sample, good_bad?: ratings.sample)
end
