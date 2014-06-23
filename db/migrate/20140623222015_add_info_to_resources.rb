class AddInfoToResources < ActiveRecord::Migration
  def change
    change_table :resources do |t|
      t.string :tags
    end
  end
end
