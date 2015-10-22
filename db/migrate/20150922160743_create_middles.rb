class CreateMiddles < ActiveRecord::Migration
  def change
  	create_table :middles do |t|
  		t.references :vocab_list
  		t.references :entry
  	end
  end
end
