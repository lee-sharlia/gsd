class AddCompletedAtToGsdItems < ActiveRecord::Migration
  def change
    add_column :gsd_items, :completed_at, :datetime
  end
end
