require 'rails_helper'

RSpec.describe "Student Show Page", type: :feature do
  describe "whe I visit a student's show page" do
    it "I see a list of the student's courses" do
      luna = Student.create!(name: "Luna Lovegood", age: 12, house: "Ravenclaw")
      hermione = Student.create!(name: "Hermione Granger", age: 13, house: "Gryffindor")

      care_of_magical_creatures = Course.create!(name: "Care of Magical Creatures")
      herbology = Course.create!(name: "Herbology")
      
      StudentCourse.create!(student: luna, course: care_of_magical_creatures)
      StudentCourse.create!(student: luna, course: herbology)
      StudentCourse.create!(student: hermione, course: herbology)


      visit "/students/#{luna.id}"

      expect(page).to have_content("Name: #{luna.name}")
      expect(page).to have_content("Age: #{hermione.age}")
      expect(page).to have_content("House: #{hermione.house}")
      expect(page).to_not have_content("Name: #{hermione.name}")

    end
  end
end


# User Story 2 of 4
#
# As a visitor,
# When I visit '/students/:id'
# I see a list of the students' courses.
#
# (e.g. "Defense against the Dark Arts"
#       "Herbology"
#       "Potions")
