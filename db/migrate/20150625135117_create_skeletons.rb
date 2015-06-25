class CreateSkeletons < ActiveRecord::Migration
  def change
    create_table :skeletons do |t|
      t.integer :user_id
      t.string :content

      t.timestamps null: false
    end
  end
end
