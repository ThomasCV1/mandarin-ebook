class CreateHighlightInstances < ActiveRecord::Migration
  def change
  	create_table :highlight_instances do |t|
  		t.string :character
  		t.references :user
  		t.integer :count
  		t.timestamps
  	end
  end
end
