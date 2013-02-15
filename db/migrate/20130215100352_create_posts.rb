class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :name
      t.text :desc

      t.timestamps
    end
  end
end
