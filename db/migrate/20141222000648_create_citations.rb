class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :author
      t.string :title
      t.string :pub_info
      t.string :classification
      t.string :line_numbers_quoted

      t.timestamps
    end
  end
end
