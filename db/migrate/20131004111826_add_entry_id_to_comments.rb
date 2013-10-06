class AddEntryIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :entry_id, :integer, null: false
  end
end
