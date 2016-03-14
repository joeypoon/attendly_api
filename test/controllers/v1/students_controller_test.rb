require 'test_helper'

class V1::StudentsControllerTest < ActionController::TestCase
  test 'can post create' do
    student = attributes_for :student
    assert_difference 'Student.count' do
      post :create, student: student.as_json
      assert_response 200
    end
  end

  test 'can get show' do
    student = create :student
    get :show, id: student.id
    assert_response 200
    assert_not_nil assigns :student
  end
end