class RemoveNotNullFromProjectsImage < ActiveRecord::Migration[5.1]
  def change
    change_column_null(:projects, :image, true)
  end
end
