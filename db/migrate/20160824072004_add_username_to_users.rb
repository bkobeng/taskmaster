class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column   :users ,:username ,:string
    add_column :users ,:city ,:string
    add_column  :users ,:contact ,:string
    add_column  :users ,:address ,:string
    add_column   :users ,:fname ,:string
    add_column :users ,:lname ,:string
  end
end
