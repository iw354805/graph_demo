require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { q_1: @question.q_1, q_1_count: @question.q_1_count, q_2: @question.q_2, q_2_count: @question.q_2_count, q_3: @question.q_3, q_3_count: @question.q_3_count, q_4: @question.q_4, q_4_count: @question.q_4_count, title: @question.title }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    patch :update, id: @question, question: { q_1: @question.q_1, q_1_count: @question.q_1_count, q_2: @question.q_2, q_2_count: @question.q_2_count, q_3: @question.q_3, q_3_count: @question.q_3_count, q_4: @question.q_4, q_4_count: @question.q_4_count, title: @question.title }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
