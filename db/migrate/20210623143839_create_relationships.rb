class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|
      t.integer :blog_id
      t.integer :follower_id

      t.timestamps

      add_index :relationships, :blog_id
      add_index :relationships, :follower_id
      add_index :relationships, [:blog_id, :follower_id], unique: true
    end
  end
end
