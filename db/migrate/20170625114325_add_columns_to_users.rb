class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uname, :string, after: :id
  end
end
