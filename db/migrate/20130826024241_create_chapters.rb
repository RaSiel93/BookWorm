class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.text :content
      t.integer :number

      t.timestamps
    end
  end
end
