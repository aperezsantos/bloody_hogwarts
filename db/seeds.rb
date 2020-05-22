# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

luna = Student.create!(name: "Luna Lovegood", age: 12, house: "Ravenclaw")
hermione = Student.create!(name: "Hermione Granger", age: 13, house: "Gryffindor")

care_of_magical_creatures = Course.create!(name: "Care of Magical Creatures")
defense_against_the_dark_arts = Course.create!(name: "Defense Against the Dark Arts")
herbology = Course.create!(name: "Herbology")

StudentCourse.create!(student: luna, course: care_of_magical_creatures)
StudentCourse.create!(student: luna, course: herbology)
StudentCourse.create!(student: hermione, course: defense_against_the_dark_arts)
StudentCourse.create!(student: hermione, course: herbology)
