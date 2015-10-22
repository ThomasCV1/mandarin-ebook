class CreateBooks < ActiveRecord::Migration
  def change
  	create_table :books do |t|
  		t.string :english_title
  		t.string :chinese_title
  		t.integer :series

  		t.timestamps
  	end
  end
end
