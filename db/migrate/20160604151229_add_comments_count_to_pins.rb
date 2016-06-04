class AddCommentsCountToPins < ActiveRecord::Migration
  def change
    add_column :pins, :comments_count, :integer, default: 0, null: false
  end
end
