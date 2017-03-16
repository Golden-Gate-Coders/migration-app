class MakeChangesToProducts < ActiveRecord::Migration[5.0]
  def change
    # Change name from title to name
    rename_column :products, :title, :name

    # Change the data type from string to text
    change_column :products, :description, :text

    # Remove a column
    remove_column :products, :isbn, :string
  end
end
