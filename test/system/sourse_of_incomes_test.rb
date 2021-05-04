require "application_system_test_case"

class SourseOfIncomesTest < ApplicationSystemTestCase
  setup do
    @sourse_of_income = sourse_of_incomes(:one)
  end

  test "visiting the index" do
    visit sourse_of_incomes_url
    assert_selector "h1", text: "Sourse Of Incomes"
  end

  test "creating a Sourse of income" do
    visit sourse_of_incomes_url
    click_on "New Sourse Of Income"

    check "Approval" if @sourse_of_income.approval
    fill_in "Difference", with: @sourse_of_income.difference
    fill_in "Expenses", with: @sourse_of_income.expenses
    fill_in "Independent", with: @sourse_of_income.independent
    fill_in "Mixed income", with: @sourse_of_income.mixed_income
    fill_in "Salary income", with: @sourse_of_income.salary_income
    click_on "Create Sourse of income"

    assert_text "Sourse of income was successfully created"
    click_on "Back"
  end

  test "updating a Sourse of income" do
    visit sourse_of_incomes_url
    click_on "Edit", match: :first

    check "Approval" if @sourse_of_income.approval
    fill_in "Difference", with: @sourse_of_income.difference
    fill_in "Expenses", with: @sourse_of_income.expenses
    fill_in "Independent", with: @sourse_of_income.independent
    fill_in "Mixed income", with: @sourse_of_income.mixed_income
    fill_in "Salary income", with: @sourse_of_income.salary_income
    click_on "Update Sourse of income"

    assert_text "Sourse of income was successfully updated"
    click_on "Back"
  end

  test "destroying a Sourse of income" do
    visit sourse_of_incomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sourse of income was successfully destroyed"
  end
end
