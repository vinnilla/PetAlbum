class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :gender
      t.string :breed
      t.string :bio
      t.string :prof_pic
      t.integer :user_id, null: false, default: 0

      t.timestamps
    end
  end
end
