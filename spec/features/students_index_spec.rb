require 'rails_helper'

RSpec.describe "Students Index Page", type: :feature do
  describe "whe I visit the students index page" do
    it "I see a list of students with personal information" do
      luna = Student.create!(name: "Luna Lovegood", age: 12, house: "Ravenclaw")
      hermione = Student.create!(name: "Hermione Granger", age: 13, house: "Gryffindor")

      visit "/students"

      expect(page).to have_content("Name: #{luna.name}")
      expect(page).to have_content("Age: #{hermione.age}")
      expect(page).to have_content("House: #{hermione.house}")
    end
  end
end


# User Story 1 of 4
#
# As a visitor,
# When I visit '/students',
# I see a list of students with the following information:
# -Name
# -Age
# -House
# (e.g. "Name: Casseopia Black, Age: 14, House: Slytherin")
