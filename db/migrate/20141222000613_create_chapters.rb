class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :name
      t.integer :starting_line_number
      t.integer :ending_line_number

      t.timestamps
    end
  end
end
