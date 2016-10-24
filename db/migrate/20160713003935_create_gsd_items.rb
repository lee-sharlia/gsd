class CreateGsdItems < ActiveRecord::Migration
  def change
    create_table :gsd_items do |t|
      t.string :content
      t.references :gsd_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
