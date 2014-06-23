class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :link
      t.string :date
      t.text :description
      t.string :category
      t.string :status
      t.attachment :screenshot

      t.timestamps
    end
  end
end
