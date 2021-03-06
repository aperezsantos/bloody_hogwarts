require 'rails_helper'

RSpec.describe "Students Index Page", type: :feature do
  describe "when I visit the students index page" do
    before(:each) do
      @luna = Student.create!(name: "Luna Lovegood", age: 12, house: "Ravenclaw")
      @hermione = Student.create!(name: "Hermione Granger", age: 13, house: "Gryffindor")

      visit "/students"
    end

    it "I see a list of students with personal information" do
      expect(page).to have_content("Name: #{@luna.name}")
      expect(page).to have_content("Age: #{@hermione.age}")
      expect(page).to have_content("House: #{@hermione.house}")
    end

    it "I see the average age of students" do
      expect(page).to have_content("Average student age: 12.5")
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


# User Story 4 of 4
#
# As a visitor,
# When I visit '/students'
# I see the average age of all students.
#
# (e.g. "Average Age: 14.5")
