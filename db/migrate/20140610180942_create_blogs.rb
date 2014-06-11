class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.string :tags
      t.boolean :publish

      t.timestamps
    end
  end
end