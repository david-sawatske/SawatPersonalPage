class CreateProjectsTechnologiesJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :projects, :technologies do |t|
      t.index [:project_id, :technology_id]
    end
  end
end
