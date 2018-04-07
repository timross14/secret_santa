class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :list_id
      t.string :text
      t.boolean :intend_to_purchase
      t.boolean :purchased

      t.timestamps
    end
  end
end
