class RemoveNotNullFromTechIcon < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:technologies, :icon, true)
  end
end
