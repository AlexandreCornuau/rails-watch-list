class RenameComentToComment < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookmarks, :coment, :comment
  end
end
