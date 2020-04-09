class CreatePost < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :comments_count, default: 0
      t.boolean :published, default: false
      t.timestamps
    end

    create_table :comments do |c|
      c.belongs_to :post
      c.text :content
      c.timestamps
    end
  end
end
