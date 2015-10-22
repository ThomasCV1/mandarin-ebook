class CreateVocabLists < ActiveRecord::Migration
  def change
  	create_table :vocab_lists do |t|
  		t.string :title
  		t.references :book
 		t.integer :chapter_id

 		t.timestamps
  	end
  end
end
