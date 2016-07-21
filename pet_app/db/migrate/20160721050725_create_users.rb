class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :f_name
      t.string :l_name
      t.string :city
      t.string :prof_pic

      t.timestamps
    end
  end
end
