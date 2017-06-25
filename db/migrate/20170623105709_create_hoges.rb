class CreateHoges < ActiveRecord::Migration
  def change
    create_table :hoges do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
