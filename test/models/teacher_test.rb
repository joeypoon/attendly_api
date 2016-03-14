require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  test 'factory is valid' do
    teacher = build :teacher
    assert teacher.valid?
  end

  test 'validates presence of name' do
    teacher = build :teacher, name: nil
    assert_not teacher.valid?
  end
end