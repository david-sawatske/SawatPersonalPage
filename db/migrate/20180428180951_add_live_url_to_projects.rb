class AddLiveUrlToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :live_url, :text
  end
end
