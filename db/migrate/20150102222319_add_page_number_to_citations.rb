class AddPageNumberToCitations < ActiveRecord::Migration
  def change
    add_column :citations, :page_number, :string
  end
end
