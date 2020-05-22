require 'rails_helper'

RSpec.describe Student, type: :model do

  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :age}
    it {should validate_presence_of :house}
  end

  describe 'relationships' do
    it {should have_many :student_courses}
    it {should have_many(:courses).through(:student_courses)}
  end

  describe 'class methods' do
    it ".average_student_age" do
      students = Student.all
      luna = Student.create(name: "Luna Lovegood", age: 4, house: "Ravenclaw")
      hermione = Student.create(name: "Hermione Granger", age: 6, house: "Gryffindor")

      expect(students.average_student_age).to eq(5)
    end
  end
end
