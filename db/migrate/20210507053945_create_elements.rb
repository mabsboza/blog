class CreateElements < ActiveRecord::Migration[6.1]
  def change
    create_table :elements do |t|
      t.string :element_type
      t.text :content
      t.references :post, null: false, foreign_key: true
      t.string :position_integer

      t.timestamps
    end
  end
end
