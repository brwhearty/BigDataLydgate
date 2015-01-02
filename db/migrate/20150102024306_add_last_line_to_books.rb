class AddLastLineToBooks < ActiveRecord::Migration
  def change
    add_column :books, :last_line, :string
  end
end
