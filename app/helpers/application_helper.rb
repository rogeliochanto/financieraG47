#https://apidock.com/rails/ActionView/Helpers/NumberHelper/number_to_currency
module ApplicationHelper
  def number_to_colones(number)
    number_to_currency(number, unit: '₡', separator: '.',precision: 2)
  end
end
