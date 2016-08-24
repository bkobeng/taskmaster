class AddContactToListings < ActiveRecord::Migration
  def change
    add_column   :listings ,:contact,:string
    add_column :listings ,:price ,:string
  end
end
