require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test 'factory is valid' do
    student = build :student
    assert student.valid?
  end

  test 'validates presence of name' do
    student = build :student, name: nil
    assert_not student.valid?
  end

  test 'validates presence of email' do
    student = build :student, email: nil
    assert_not student.valid?
  end

  test 'validates uniqueness of email' do
    email = "test@gmail.com"
    create :student, email: email
    student = build :student, email: email
    assert_not student.valid?
  end
end