class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title

      t.timestamps
    end
    add_column :quotes, :category_id, :integer
    add_index :quotes, :category_id
  end
end
