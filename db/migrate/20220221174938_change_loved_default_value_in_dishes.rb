class ChangeLovedDefaultValueInDishes < ActiveRecord::Migration[6.0]
  def change
    change_column_default :dishes, :loved, "false"
  end
end
