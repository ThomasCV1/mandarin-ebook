class CreateUserBooks < ActiveRecord::Migration
  def change
  	create_table :user_books do |t|
  		t.references :user
  		t.references :book
  	end
  end
end
