require "test_helper"

class SourseOfIncomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sourse_of_income = sourse_of_incomes(:one)
  end

  test "should get index" do
    get sourse_of_incomes_url
    assert_response :success
  end

  test "should get new" do
    get new_sourse_of_income_url
    assert_response :success
  end

  test "should create sourse_of_income" do
    assert_difference('SourseOfIncome.count') do
      post sourse_of_incomes_url, params: { sourse_of_income: { approval: @sourse_of_income.approval, difference: @sourse_of_income.difference, expenses: @sourse_of_income.expenses, independent: @sourse_of_income.independent, mixed_income: @sourse_of_income.mixed_income, salary_income: @sourse_of_income.salary_income } }
    end

    assert_redirected_to sourse_of_income_url(SourseOfIncome.last)
  end

  test "should show sourse_of_income" do
    get sourse_of_income_url(@sourse_of_income)
    assert_response :success
  end

  test "should get edit" do
    get edit_sourse_of_income_url(@sourse_of_income)
    assert_response :success
  end

  test "should update sourse_of_income" do
    patch sourse_of_income_url(@sourse_of_income), params: { sourse_of_income: { approval: @sourse_of_income.approval, difference: @sourse_of_income.difference, expenses: @sourse_of_income.expenses, independent: @sourse_of_income.independent, mixed_income: @sourse_of_income.mixed_income, salary_income: @sourse_of_income.salary_income } }
    assert_redirected_to sourse_of_income_url(@sourse_of_income)
  end

  test "should destroy sourse_of_income" do
    assert_difference('SourseOfIncome.count', -1) do
      delete sourse_of_income_url(@sourse_of_income)
    end

    assert_redirected_to sourse_of_incomes_url
  end
end
