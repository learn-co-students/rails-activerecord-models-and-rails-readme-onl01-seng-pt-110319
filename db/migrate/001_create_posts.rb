class CreatePosts < ActiveRecord::Migration
    def change
      create_table :posts do |col|
        col.string :title
        col.text :description
        col.timestamps null: false
      end
    end
  end