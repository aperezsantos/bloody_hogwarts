require 'rails_helper'

RSpec.describe "Courses Index Page", type: :feature do
  describe "whe I visit the courses index page" do
    it "I see a list of courses and the number of students enrolled per course" do
      luna = Student.create!(name: "Luna Lovegood", age: 12, house: "Ravenclaw")
      hermione = Student.create!(name: "Hermione Granger", age: 13, house: "Gryffindor")

      care_of_magical_creatures = Course.create!(name: "Care of Magical Creatures")
      defense_against_the_dark_arts = Course.create!(name: "Defense Against the Dark Arts")
      herbology = Course.create!(name: "Herbology")

      StudentCourse.create!(student: luna, course: care_of_magical_creatures)
      StudentCourse.create!(student: luna, course: herbology)
      StudentCourse.create!(student: hermione, course: defense_against_the_dark_arts)

      visit "/courses"

      expect(page).to have_content("#{care_of_magical_creatures.name}: 1")
      expect(page).to have_content("#{defense_against_the_dark_arts.name}: 1")
      expect(page).to have_content("#{herbology.name}: 2")
    end
  end
end


# User Story 3 of 4
# As a visitor,
# When I visit '/courses'
# I see a list of courses and the number of students enrolled in each course.
#
# (e.g. "Defense Against the Dark Arts: 5"
#       "Herbology: 10")
