class ChangeGroupFieldForPost < ActiveRecord::Migration[5.0]
  def change
    rename_column :posts, :group, :group_id
  end
end
