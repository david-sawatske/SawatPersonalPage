class AddGitLinkToProject < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :git_url, :text
  end
end
