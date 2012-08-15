class AddUserTypeToUsers < ActiveRecord::Migration
  def self.up
  	change_table :users do |t|
  		t.integer :user_type, :default=>1
    end

    User.update_all ["user_type = ?",0]
  end

  def self.down
    remove_column :users, :user_type
  end
end
