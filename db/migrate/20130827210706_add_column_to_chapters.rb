class AddColumnToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :book_id, :integer
  end
end
