require 'test_helper'

class V1::TeachersControllerTest < ActionController::TestCase
  test 'can post create' do
    teacher = attributes_for :teacher
    assert_difference 'Teacher.count' do
      post :create, teacher: teacher.as_json
      assert_response 200
    end
  end

  test 'can get show' do
    teacher = create :teacher
    get :show, id: teacher.id
    assert_response 200
    assert_not_nil assigns :teacher
  end
end