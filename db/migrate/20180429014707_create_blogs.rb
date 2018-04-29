class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
