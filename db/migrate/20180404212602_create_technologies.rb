class CreateTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :technologies do |t|
      t.string :name, null: false
      t.text :icon, null: false

      t.timestamps
    end
  end
end
