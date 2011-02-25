require 'test_helper'

class CodeSubmissionsControllerTest < ActionController::TestCase
  setup do
    @code_submission = code_submissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:code_submissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create code_submission" do
    assert_difference('CodeSubmission.count') do
      post :create, :code_submission => @code_submission.attributes
    end

    assert_redirected_to code_submission_path(assigns(:code_submission))
  end

  test "should show code_submission" do
    get :show, :id => @code_submission.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @code_submission.to_param
    assert_response :success
  end

  test "should update code_submission" do
    put :update, :id => @code_submission.to_param, :code_submission => @code_submission.attributes
    assert_redirected_to code_submission_path(assigns(:code_submission))
  end

  test "should destroy code_submission" do
    assert_difference('CodeSubmission.count', -1) do
      delete :destroy, :id => @code_submission.to_param
    end

    assert_redirected_to code_submissions_path
  end
end
